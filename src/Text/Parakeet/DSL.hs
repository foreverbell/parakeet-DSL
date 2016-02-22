{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleInstances #-}

module Text.Parakeet.DSL ( 
  Lexeme
, (#)
, l, k
, eol, whitespace, (<|>)
, module Text.Parakeet.DSL.Hiragana
, module Text.Parakeet.DSL.Katakana
) where

import Prelude hiding (pi)

import Control.Monad.Free (liftF)
import Control.Monad (void)

import Text.Parakeet.Primitive
import Text.Parakeet.DSL.Hiragana
import Text.Parakeet.DSL.Katakana

class LexemeArg a where
  formatArg :: a -> Lexeme ()

instance (b ~ Lexeme a) => LexemeArg b where
  formatArg = void

class LexemeType r where
  lexemeFold :: Lexeme a -> r

instance (a ~ ()) => LexemeType (Lexeme a) where
  lexemeFold = void

instance (LexemeArg b, LexemeType r) => LexemeType (b -> r) where
  lexemeFold ls = \l -> lexemeFold (ls >> formatArg l)

class KanjiType r where
  kanjiFold :: String -> [LitR] -> r

instance (a ~ ()) => KanjiType (Lexeme a) where
  kanjiFold k rs = liftF $ Kanji k (reverse rs) ()

instance (a ~ LitR, KanjiType r) => KanjiType (a -> r) where
  kanjiFold k rs = \r -> kanjiFold k (r:rs)

(#) :: (LexemeType r) => Lexeme () -> r
(#) = lexemeFold

l :: String -> Lexeme ()
l li = liftF $ Lit li ()

k :: (KanjiType r) => String -> r
k ka = kanjiFold ka []

eol :: Lexeme ()
eol = liftF $ EOL ()

whitespace :: Lexeme ()
whitespace = l " "

(<|>) :: Lexeme ()
(<|>) = whitespace
