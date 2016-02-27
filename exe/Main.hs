import Text.Parakeet.DSL
import Text.Parakeet.Render (renderTex)

main :: IO ()
main = putStrLn $ renderTex $ do

  let wow5 = lit "wow wow～"
  let stay = lit "Stay"
  let onMyLove = lit "On my love"

  (#) go' ki' ge' n' na (kan "蝶" cho u) ni na t te (|||) ki ra me ku (kan "風" ka ze) ni (kan "乗" no) t te (\\\)
  (#) (kan "今" i ma) su gu (|||) ki' mi' ni (kan "会" a) i ni (kan "行" yu) ko u (\\\)
  (#) (kan "余計" yo ke i) na (kan "事" ko to) na n te (|||) (kan "忘" wa su) re ta (kan "方" ho u) ga ma' shi' sa (\\\)
  (#) ko re i (kan "以上" jo u) (|||) sha' re' te ru (kan "時間" ji ka n) wa1 na i (\\\)

  (#) (\\\)

  (#) (kan "何" na ni) ga (|||) wow5 (|||) ko no (kan "空" so ra) ni (kan "届" to d0) ku no da ro u (\\\)
  (#) da ke d0 (|||) wow5 (|||) (kan "明日" a shi ta) no (kan "予定" yo te i) mo wa ka ra na i (\\\)

  (#) (\\\)

  let p1 = do
        (#) (kan "無限大" mu ge n da i) na (kan "夢" yu me) no a to no (|||) (kan "何" na ni) mo na i (kan "世" yo) no (kan "中" na ka) ja (\\\)
        (#) so u sa (kan "愛" i to) shi i (|||) (kan "想" o mo) i mo (kan "負" ma) ke so u ni na ru ke d0 (\\\)
        (#) stay shi ga chi na i' me' e' ji' da ra ke no (|||) (kan "頼" ta yo) ri na i (kan "翼" tsu ba sa) de mo (\\\)
        (#) ki t to (kan "飛" to) be ru sa (|||) onMyLove (\\\)

  (#) p1

  (#) (\\\)

  (#) u' ka' re' ta' (kan "蝶" cho u) ni na t te (|||) (kan "一途" i chi zu) na (kan "風" ka ze) ni (kan "乗" no) t te (\\\)
  (#) d0 ko ma de mo (|||) ki' mi' ni (kan "会" a) i ni (kan "行" yu) ko u (\\\)
  (#) (kan "曖昧" a i ma i) na (kan "言葉" ko to ba) t te (|||) (kan "意外" i ga i) ni (kan "便利" be n ri) da t te (\\\)
  (#) (kan "叫" sa ke) n de ru (|||) hi' t' to' so' n' gu' (kan "聴" ki) ki na ga ra (\\\)

  (#) (\\\)

  (#) (kan "何" na ni) ga (|||) wow5 (|||) ko no (kan "街" ma chi) ni (kan "響" hi bi) ku no da ro u (\\\)
  (#) da ke d0 (|||) wow5 (|||) (kan "期待" ki ta i) shi te te mo (kan "仕方" shi ka ta) na i (\\\)

  (#) (\\\)

  let p2 = do
        (#) (kan "無限大" mu ge n da i) na (kan "夢" yu me) no a to no (|||) ya ru se na i (kan "世" yo) no (kan "中" na ka) ja (\\\)
        (#) so u sa (kan "常識" jo u shi ki) (|||) ha zu re mo (kan "悪" wa ru) ku na i ka na (\\\)
        (#) stay shi so u na i' me' e' ji' wo' (kan "染" so) me ta (|||) gi ko chi na i (kan "翼" tsu ba sa) de mo (\\\)
        (#) ki t to (kan "飛" to) be ru sa (|||) onMyLove (\\\)
  
  (#) p2

  (#) (\\\)

  (#) p1

  (#) (\\\)

  p2

