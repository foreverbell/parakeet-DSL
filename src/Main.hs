{-# LANGUAGE QuasiQuotes, OverloadedStrings #-}

module Main where

import Text.Parakeet.DSL
import Text.Parakeet.Render (tex)
import Text.Parakeet.QuasiEmbedFile

wow5 = l "wow wow～"
stay = l "Stay"
onMyLove = l "On my love"

main :: IO ()
main = putStrLn $ concat [efile|template.tex|]

body = tex $ do

  (#) go' ki' ge' n' na (k "蝶" cho u) ni na t te (<|>) ki ra me ku (k "風" ka ze) ni (k "乗" no) t te eol
  (#) (k "今" i ma) su gu (<|>) ki' mi' ni (k "会" a) i ni (k "行" yu) ko u eol
  (#) (k "余計" yo ke i) na (k "事" ko to) na n te (<|>) (k "忘" wa su) re ta (k "方" ho u) ga ma' shi' sa eol
  (#) ko re i (k "以上" jo u) (<|>) sha' re' te ru (k "時間" ji ka n) wa_ na i eol

  (#) eol

  (#) (k "何" na ni) ga (<|>) wow5 (<|>) ko no (k "空" so ra) ni (k "届" to d0) ku no da ro u eol
  (#) da ke d0 (<|>) wow5 (<|>) (k "明日" a shi ta) no (k "予定" yo te i) mo wa ka ra na i eol

  (#) eol

  let p1 = do
        (#) (k "無限大" mu ge n da i) na (k "夢" yu me) no a to no (<|>) (k "何" na ni) mo na i (k "世" yo) no (k "中" na ka) ja eol
        (#) so u sa (k "愛" i to) shi i (<|>) (k "想" o mo) i mo (k "負" ma) ke so u ni na ru ke d0 eol
        (#) stay shi ga chi na i' me' e' ji' da ra ke no (<|>) (k "頼" ta yo) ri na i (k "翼" tsu ba sa) de mo eol
        (#) ki t to (k "飛" to) be ru sa (<|>) onMyLove eol

  p1

  (#) eol

  (#) u' ka' re' ta' (k "蝶" cho u) ni na t te (<|>) (k "一途" i chi zu) na (k "風" ka ze) ni (k "乗" no) t te eol
  (#) d0 ko ma de mo (<|>) ki' mi' ni (k "会" a) i ni (k "行" yu) ko u eol
  (#) (k "曖昧" a i ma i) na (k "言葉" ko to ba) t te (<|>) (k "意外" i ga i) ni (k "便利" be n ri) da t te eol
  (#) (k "叫" sa ke) n de ru (<|>) hi' t' to' so' n' gu' (k "聴" ki) ki na ga ra eol

  (#) eol

  (#) (k "何" na ni) ga (<|>) wow5 (<|>) ko no (k "街" ma chi) ni (k "響" hi bi) ku no da ro u eol
  (#) da ke d0 (<|>) wow5 (<|>) (k "期待" ki ta i) shi te te mo (k "仕方" shi ka ta) na i eol

  (#) eol

  let p2 = do
        (#) (k "無限大" mu ge n da i) na (k "夢" yu me) no a to no (<|>) ya ru se na i (k "世" yo) no (k "中" na ka) ja eol
        (#) so u sa (k "常識" jo u shi ki) (<|>) ha zu re mo (k "悪" wa ru) ku na i ka na eol
        (#) stay shi so u na i' me' e' ji' wo' (k "染" so) me ta (<|>) gi ko chi na i (k "翼" tsu ba sa) de mo eol
        (#) ki t to (k "飛" to) be ru sa (<|>) onMyLove eol
  
  p2

  (#) eol

  p1

  (#) eol

  p2

