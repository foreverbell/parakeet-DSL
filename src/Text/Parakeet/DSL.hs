{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleInstances #-}

module Text.Parakeet.DSL ( 
  Lexeme
, (#)
, h, k, lit, kanji, eol
, a, i
) where

import Control.Monad.Free (liftF)
import Control.Monad (void)

import Text.Parakeet.Primitive

class LexemeType r where
  lexemeFold :: Lexeme a -> r

instance (a ~ ()) => LexemeType (Lexeme a) where
  lexemeFold = void 

instance (b ~ Lexeme a, LexemeType r) => LexemeType (b -> r) where
  lexemeFold ls = \l -> lexemeFold (ls >> l)

class IsR r where
  toR :: String -> r

instance (a ~ ()) => IsR (Lexeme a) where
  toR r = liftF $ Romaji r ()

instance IsR LitR where
  toR r = LitR r

(#) :: (LexemeType r) => Lexeme () -> r
(#) = lexemeFold

lit :: String -> Lexeme ()
lit l = liftF $ Lit l ()

kanji :: String -> [LitR] -> Lexeme ()
kanji k rs = liftF $ Kanji k rs ()

h :: Lexeme a -> Lexeme ()
h l = liftF $ Hiragana (SomeLexeme l) ()

k :: Lexeme a -> Lexeme ()
k l = liftF $ Katakana (SomeLexeme l) ()

eol :: Lexeme ()
eol = liftF $ EOL ()

a :: IsR r => r
a = toR "a"

i :: IsR r => r
i = toR "i"
