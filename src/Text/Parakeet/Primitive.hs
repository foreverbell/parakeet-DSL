{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleInstances #-}

module Text.Parakeet.Primitive ( 
  LexemeF (..)
, Lexeme
, LitR (..)
, IsR (..)
) where

import Control.Monad.Free (Free, liftF)

data LexemeF a 
  = Romaji String String a
  | Lit String a
  | Kanji String [LitR] a
  | EOL a
  deriving (Functor)

type Lexeme = Free LexemeF

data LitR = LitR String String

class IsR r where
  toR :: String -> String -> r

instance (a ~ ()) => IsR (Lexeme a) where
  toR r k = liftF $ Romaji r k ()

instance IsR LitR where
  toR r k = LitR r k
