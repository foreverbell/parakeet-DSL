{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE ExistentialQuantification #-}

module Text.Parakeet.Primitive ( 
  LexemeF (..)
, Lexeme
, SomeLexeme (..)
, LitR (..)
) where

import Control.Monad.Free (Free)

newtype LitR = LitR String

data LexemeF a 
  = Romaji String a
  | Lit String a
  | Kanji String [LitR] a
  | Hiragana SomeLexeme a
  | Katakana SomeLexeme a
  | EOL a
  deriving (Functor)

type Lexeme = Free LexemeF

data SomeLexeme = forall a. SomeLexeme (Lexeme a)
