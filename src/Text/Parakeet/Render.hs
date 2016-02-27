{-# LANGUAGE QuasiQuotes, OverloadedStrings #-}

module Text.Parakeet.Render ( 
  renderTex
) where

import Control.Monad.Free (runFreeM)
import Control.Monad.Writer
import Data.List (intercalate)
import Text.Printf (printf)
import Text.Parakeet.Primitive
import Text.Parakeet.QuasiEmbedFile (efile)

type Render = Writer String

renderTex :: Lexeme a -> String
renderTex (Lexeme l) = concat [efile|template.tex|] 
  where
    body = execWriter (runFreeM render l)

    render :: LexemeF a -> Render a
    render (Kana r k ctx) = do
      tell $ printf "\\ruby{\\large{%s}}{\\normalsize{%s}} " k r
      return ctx

    render (Lit l ctx) = do
      tell $ printf "\\large{\\verb|%s|} " l 
      return ctx

    render (Kanji k rs' ctx) = do
      let unwrap (LitKana r k) = (r, k)
      let (rs, ks) = unzip $ map unwrap rs'
      tell $ printf "\\ruby{\\large{%s}\\small{(%s)}}{\\normalsize{%s}} " k (concat ks) (intercalate " " rs)
      return ctx

    render (EOL ctx) = do
      tell "\\\\\n"
      return ctx
