{-# LANGUAGE QuasiQuotes, OverloadedStrings #-}

module Main where

import Text.Parakeet.DSL
import Text.Parakeet.Render (tex)
import Text.Parakeet.QuasiEmbedFile

wow5 = lit "wow wow～"
stay = lit "Stay"
onMyLove = lit "On my love"

main :: IO ()
main = putStrLn $ concat [efile|template.tex|]

body = tex $ do

  (#) go ki ge n na cho u ni na t te (<|>) ki ra me ku ka ze ni no t te eol
  (#) i ma su gu (<|>) ki mi ni a i ni yu ko u eol
  (#) yo ke i na ko to na n te (<|>) wa su re ta ho u ga ma shi sa eol
  (#) ko re i jo u (<|>) sha re te ru ji ka n wa na i eol

  (#) eol

  (#) na ni ga (<|>) wow5 (<|>) ko no so ra ni to d0 ku no da ro u eol
  (#) da ke d0 (<|>) wow5 (<|>) a shi ta no yo te i mo wa ka ra na i eol

  (#) eol

  let p1 = do
        (#) mu ge n da i na yu me no a to no (<|>) na ni mo na i yo no na ka ja eol
        (#) so u sa i to shi i (<|>) o mo i mo ma ke so u ni na ru ke d0 eol
        (#) stay shi ga chi na i me e ji da ra ke no (<|>) ta yo ri na i tsu ba sa de mo eol
        (#) ki t to to be ru sa (<|>) onMyLove eol

  p1

  (#) eol

  (#) u ka re ta cho u ni na t te (<|>) i chi zu na ka ze ni no t te eol
  (#) d0 ko ma de mo (<|>) ki mi ni a i ni yu ko u eol
  (#) a i ma i na ko to ba t te (<|>) i ga i ni be n ri da t te eol
  (#) sa ke n de ru (<|>) hi t to so n gu ki ki na ga ra eol

  (#) eol

  (#) na ni ga (<|>) wow5 (<|>) ko no ma chi ni hi bi ku no da ro u eol
  (#) da ke d0 (<|>) wow5 (<|>) ki ta i shi te te mo shi ka ta na i eol

  (#) eol

  let p2 = do
        (#) mu ge n da i na yu me no a to no (<|>) ya ru se na i yo no na ka ja eol
        (#) so u sa jo u shi ki (<|>) ha zu re mo wa ru ku na i ka na eol
        (#) stay shi so u na i me e ji wo so me ta (<|>) gi ko chi na i tsu ba sa de mo eol
        (#) ki t to to be ru sa (<|>) onMyLove eol

  p1

  (#) eol

  p2
