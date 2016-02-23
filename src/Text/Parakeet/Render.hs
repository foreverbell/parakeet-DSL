module Text.Parakeet.Render ( 
  tex
) where

import           Control.Monad.Free (runFreeM)
import           Control.Monad.Writer
import           Data.List (intercalate)
import           Text.Printf (printf)
import           Text.Parakeet.Primitive

type Render = Writer String

tex :: Lexeme a -> String
tex (Lexeme l) = execWriter (runFreeM render l)
  where
    render :: LexemeF a -> Render a
    render (Romaji r k ctx) = do
      tell $ printf "\\ruby{\\large{%s}}{\\normalsize{%s}} " k r
      return ctx

    render (Lit l ctx) = do
      tell $ printf "\\large{\\verb|%s|} " l 
      return ctx

    render (Kanji k rs' ctx) = do
      let unwrap (LitR r k) = (r, k)
      let (rs, ks) = unzip $ map unwrap rs'
      tell $ printf "\\ruby{\\large{%s}\\small{(%s)}}{\\normalsize{%s}} " k (concat ks) (intercalate " " rs)
      return ctx

    render (EOL ctx) = do
      tell "\\\\\n"
      return ctx
