module Text.Parakeet.Render ( 
  tex
) where

import           Control.Monad.Free (runFreeM)
import           Control.Monad.Writer
import           Control.Monad.State
import           Data.List (intercalate)
import           Data.Maybe (fromJust)
import qualified Data.Map as M
import           Text.Printf (printf)
import           Text.Parakeet.Primitive
import           Text.Parakeet.Linguistics

data Furigana = HiraganaF | KatakanaF

type Render = WriterT String (State Furigana)

translate :: Furigana -> String -> String
translate furigana r = fromJust $ case furigana of
  HiraganaF -> M.lookup r hiraganaMap
  KatakanaF -> M.lookup r katakanaMap

tex :: Lexeme a -> String
tex = eval HiraganaF
  where
    eval :: Furigana -> Lexeme a -> String
    eval furigana l = evalState (execWriterT (runFreeM render l)) furigana

    render :: LexemeF a -> Render a
    render (Romaji r ctx) = do
      furigana <- get
      let k = translate furigana r
      tell $ printf "\\ruby{\\large{%s}}{\\normalsize{%s}} " k r
      return ctx

    render (Lit l ctx) = do
      tell $ printf "\\large{\\verb|%s|} " l 
      return ctx

    render (Kanji k rs' ctx) = do
      furigana <- get
      let unwrap (LitR r) = r
      let rs = map unwrap rs'
      let ks = map (translate furigana) rs
      tell $ printf "\\ruby{\\large{%s}\\small{(%s)}}{\\normalsize{%s}} " k (concat ks) (intercalate " " rs)
      return ctx

    render (Hiragana (SomeLexeme l) ctx) = do
      tell $ eval HiraganaF l
      return ctx

    render (Katakana (SomeLexeme l) ctx) = do
      tell $ eval KatakanaF l
      return ctx

    render (EOL ctx) = do
      tell "\\\\\n"
      return ctx
