module Main where

import Text.Parakeet.DSL
import Text.Parakeet.Render (tex)

main :: IO ()
main = putStrLn $ tex $ do
  (#) a i eol
  (#) (lit "123") a (kanji "lalaz" [a, a, i, i])
