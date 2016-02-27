{-# LANGUAGE TypeFamilies, FlexibleInstances #-}

module Text.Parakeet.DSL ( 
  Lexeme
, (#)
, lit, kan
, eol, (\\\)
, whitespace, (|||)
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
  kanjiFold :: String -> [LitKana] -> r

instance (a ~ ()) => KanjiType (Lexeme a) where
  kanjiFold k rs = Lexeme $ liftF $ Kanji k (reverse rs) ()

instance (a ~ LitKana, KanjiType r) => KanjiType (a -> r) where
  kanjiFold k rs = \r -> kanjiFold k (r:rs)

(#) :: (LexemeType r) => r
(#) = lexemeFold (return ())

lit :: String -> Lexeme ()
lit l = Lexeme $ liftF $ Lit l ()

kan :: (KanjiType r) => String -> r
kan k = kanjiFold k []

eol :: Lexeme ()
eol = Lexeme $ liftF $ EOL ()

(\\\) :: Lexeme ()
(\\\) = eol

whitespace :: Lexeme ()
whitespace = lit " "

(|||) :: Lexeme ()
(|||) = whitespace
