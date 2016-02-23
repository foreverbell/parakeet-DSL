{-# LANGUAGE DeriveFunctor, GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TypeFamilies, FlexibleInstances #-}

module Text.Parakeet.Primitive ( 
  LexemeF (..)
, Lexeme (..)
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

newtype Lexeme a = Lexeme (Free LexemeF a)
  deriving (Functor, Applicative, Monad)

data LitR = LitR String String

class IsR r where
  toR :: String -> String -> r

instance (a ~ ()) => IsR (Lexeme a) where
  toR r k = Lexeme $ liftF $ Romaji r k ()

instance IsR LitR where
  toR r k = LitR r k
