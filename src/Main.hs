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

  (#) go' ki' ge' n' na (kanji "蝶" cho u) ni na t te (<|>) ki ra me ku (kanji "風" ka ze) ni (kanji "乗" no) t te eol
  (#) (kanji "今" i ma) su gu (<|>) ki' mi' ni (kanji "会" a) i ni (kanji "行" yu) ko u eol
  (#) (kanji "余計" yo ke i) na (kanji "事" ko to) na n te (<|>) (kanji "忘" wa su) re ta (kanji "方" ho u) ga ma' shi' sa eol
  (#) ko re i (kanji "以上" jo u) (<|>) sha' re' te ru (kanji "時間" ji ka n) wa_ na i eol

  (#) eol

  (#) (kanji "何" na ni) ga (<|>) wow5 (<|>) ko no (kanji "空" so ra) ni (kanji "届" to d0) ku no da ro u eol
  (#) da ke d0 (<|>) wow5 (<|>) (kanji "明日" a shi ta) no (kanji "予定" yo te i) mo wa ka ra na i eol

  (#) eol

  let p1 = do
        (#) (kanji "無限大" mu ge n da i) na (kanji "夢" yu me) no a to no (<|>) (kanji "何" na ni) mo na i (kanji "世" yo) no (kanji "中" na ka) ja eol
        (#) so u sa (kanji "愛" i to) shi i (<|>) (kanji "想" o mo) i mo (kanji "負" ma) ke so u ni na ru ke d0 eol
        (#) stay shi ga chi na i' me' e' ji' da ra ke no (<|>) (kanji "頼" ta yo) ri na i (kanji "翼" tsu ba sa) de mo eol
        (#) ki t to (kanji "飛" to) be ru sa (<|>) onMyLove eol

  p1

  (#) eol

  (#) u' ka' re' ta' (kanji "蝶" cho u) ni na t te (<|>) (kanji "一途" i chi zu) na (kanji "風" ka ze) ni (kanji "乗" no) t te eol
  (#) d0 ko ma de mo (<|>) ki' mi' ni (kanji "会" a) i ni (kanji "行" yu) ko u eol
  (#) (kanji "曖昧" a i ma i) na (kanji "言葉" ko to ba) t te (<|>) (kanji "意外" i ga i) ni (kanji "便利" be n ri) da t te eol
  (#) (kanji "叫" sa ke) n de ru (<|>) hi' t' to' so' n' gu' (kanji "聴" ki) ki na ga ra eol

  (#) eol

  (#) (kanji "何" na ni) ga (<|>) wow5 (<|>) ko no (kanji "街" ma chi) ni (kanji "響" hi bi) ku no da ro u eol
  (#) da ke d0 (<|>) wow5 (<|>) (kanji "期待" ki ta i) shi te te mo (kanji "仕方" shi ka ta) na i eol

  (#) eol

  let p2 = do
        (#) (kanji "無限大" mu ge n da i) na (kanji "夢" yu me) no a to no (<|>) ya ru se na i (kanji "世" yo) no (kanji "中" na ka) ja eol
        (#) so u sa (kanji "常識" jo u shi ki) (<|>) ha zu re mo (kanji "悪" wa ru) ku na i ka na eol
        (#) stay shi so u na i' me' e' ji' wo' (kanji "染" so) me ta (<|>) gi ko chi na i (kanji "翼" tsu ba sa) de mo eol
        (#) ki t to (kanji "飛" to) be ru sa (<|>) onMyLove eol
  
  p2

  (#) eol

  p1

  (#) eol

  p2

