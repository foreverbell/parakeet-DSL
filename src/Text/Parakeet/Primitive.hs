{-# LANGUAGE DeriveFunctor, GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TypeFamilies, FlexibleInstances #-}

module Text.Parakeet.Primitive ( 
  LexemeF (..)
, Lexeme (..)
, LitKana (..)
, IsKana (..)
) where

import Control.Monad.Free (Free, liftF)

data LexemeF a 
  = Kana String String a
  | Lit String a
  | Kanji String [LitKana] a
  | EOL a
  deriving (Functor)

newtype Lexeme a = Lexeme (Free LexemeF a)
  deriving (Functor, Applicative, Monad)

data LitKana = LitKana String String

class IsKana r where
  toKana :: String -> String -> r

instance (a ~ ()) => IsKana (Lexeme a) where
  toKana r k = Lexeme $ liftF $ Kana r k ()

instance IsKana LitKana where
  toKana r k = LitKana r k
