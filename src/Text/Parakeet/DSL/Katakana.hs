module Text.Parakeet.DSL.Katakana ( 
  a', i', u', e', o'
, ka', ki', ku', ke', ko'
, ga', gi', gu', ge', go'
, sa', shi', su', se', so'
, za', ji', zu', ze', zo'
, ta', chi', tsu', te', to'
, da', di', du', de', d0'
, na', ni', nu', ne', no'
, ha', hi', fu', he', ho'
, ba', bi', bu', be', bo'
, pa', pi', pu', pe', po'
, ma', mi', mu', me', mo'
, ya', yu', yo', ra', ri'
, ru', re', ro', wa', wo'
, n'
, kya', kyu', kyo'
, gya', gyu', gyo'
, sha', shu', sho'
, ja', ju', jo'
, cha', chu', cho'
, nya', nyu', nyo'
, hya', hyu', hyo'
, bya', byu', byo'
, pya', pyu', pyo'
, mya', myu', myo'
, rya', ryu', ryo'
, t'
) where

import Text.Parakeet.Primitive

a' :: IsR r => r
a' = toR "a" "ア"

i' :: IsR r => r
i' = toR "i" "イ"

u' :: IsR r => r
u' = toR "u" "ウ"

e' :: IsR r => r
e' = toR "e" "エ"

o' :: IsR r => r
o' = toR "o" "オ"

ka' :: IsR r => r
ka' = toR "ka" "カ"

ki' :: IsR r => r
ki' = toR "ki" "キ"

ku' :: IsR r => r
ku' = toR "ku" "ク"

ke' :: IsR r => r
ke' = toR "ke" "ケ"

ko' :: IsR r => r
ko' = toR "ko" "コ"

ga' :: IsR r => r
ga' = toR "ga" "ガ"

gi' :: IsR r => r
gi' = toR "gi" "ギ"

gu' :: IsR r => r
gu' = toR "gu" "グ"

ge' :: IsR r => r
ge' = toR "ge" "ゲ"

go' :: IsR r => r
go' = toR "go" "ゴ"

sa' :: IsR r => r
sa' = toR "sa" "サ"

shi' :: IsR r => r
shi' = toR "shi" "シ"

su' :: IsR r => r
su' = toR "su" "ス"

se' :: IsR r => r
se' = toR "se" "セ"

so' :: IsR r => r
so' = toR "so" "ソ"

za' :: IsR r => r
za' = toR "za" "ザ"

ji' :: IsR r => r
ji' = toR "ji" "ジ"

zu' :: IsR r => r
zu' = toR "zu" "ズ"

ze' :: IsR r => r
ze' = toR "ze" "ゼ"

zo' :: IsR r => r
zo' = toR "zo" "ゾ"

ta' :: IsR r => r
ta' = toR "ta" "タ"

chi' :: IsR r => r
chi' = toR "chi" "チ"

tsu' :: IsR r => r
tsu' = toR "tsu" "ツ"

te' :: IsR r => r
te' = toR "te" "テ"

to' :: IsR r => r
to' = toR "to" "ト"

da' :: IsR r => r
da' = toR "da" "ダ"

di' :: IsR r => r
di' = toR "di" "ヂ"

du' :: IsR r => r
du' = toR "du" "ヅ"

de' :: IsR r => r
de' = toR "de" "デ"

d0' :: IsR r => r
d0' = toR "do" "ド"

na' :: IsR r => r
na' = toR "na" "ナ"

ni' :: IsR r => r
ni' = toR "ni" "ニ"

nu' :: IsR r => r
nu' = toR "nu" "ヌ"

ne' :: IsR r => r
ne' = toR "ne" "ネ"

no' :: IsR r => r
no' = toR "no" "ノ"

ha' :: IsR r => r
ha' = toR "ha" "ハ"

hi' :: IsR r => r
hi' = toR "hi" "ヒ"

fu' :: IsR r => r
fu' = toR "fu" "フ"

he' :: IsR r => r
he' = toR "he" "ヘ"

ho' :: IsR r => r
ho' = toR "ho" "ホ"

ba' :: IsR r => r
ba' = toR "ba" "バ"

bi' :: IsR r => r
bi' = toR "bi" "ビ"

bu' :: IsR r => r
bu' = toR "bu" "ブ"

be' :: IsR r => r
be' = toR "be" "ベ"

bo' :: IsR r => r
bo' = toR "bo" "ボ"

pa' :: IsR r => r
pa' = toR "pa" "パ"

pi' :: IsR r => r
pi' = toR "pi" "ピ"

pu' :: IsR r => r
pu' = toR "pu" "プ"

pe' :: IsR r => r
pe' = toR "pe" "ペ"

po' :: IsR r => r
po' = toR "po" "ポ"

ma' :: IsR r => r
ma' = toR "ma" "マ"

mi' :: IsR r => r
mi' = toR "mi" "ミ"

mu' :: IsR r => r
mu' = toR "mu" "ム"

me' :: IsR r => r
me' = toR "me" "メ"

mo' :: IsR r => r
mo' = toR "mo" "モ"

ya' :: IsR r => r
ya' = toR "ya" "ヤ"

yu' :: IsR r => r
yu' = toR "yu" "ユ"

yo' :: IsR r => r
yo' = toR "yo" "ヨ"

ra' :: IsR r => r
ra' = toR "ra" "ラ"

ri' :: IsR r => r
ri' = toR "ri" "リ"

ru' :: IsR r => r
ru' = toR "ru" "ル"

re' :: IsR r => r
re' = toR "re" "レ"

ro' :: IsR r => r
ro' = toR "ro" "ロ"

wa' :: IsR r => r
wa' = toR "wa" "ワ"

wo' :: IsR r => r
wo' = toR "wo" "ヲ"

n' :: IsR r => r
n' = toR "n" "ン"

kya' :: IsR r => r
kya' = toR "kya" "キャ"

kyu' :: IsR r => r
kyu' = toR "kyu" "キュ"

kyo' :: IsR r => r
kyo' = toR "kyo" "キョ"

gya' :: IsR r => r
gya' = toR "gya" "ギャ"

gyu' :: IsR r => r
gyu' = toR "gyu" "ギュ"

gyo' :: IsR r => r
gyo' = toR "gyo" "ギョ"

sha' :: IsR r => r
sha' = toR "sha" "シャ"

shu' :: IsR r => r
shu' = toR "shu" "シュ"

sho' :: IsR r => r
sho' = toR "sho" "ショ"

ja' :: IsR r => r
ja' = toR "ja" "ジャ"

ju' :: IsR r => r
ju' = toR "ju" "ジュ"

jo' :: IsR r => r
jo' = toR "jo" "ジョ"

cha' :: IsR r => r
cha' = toR "cha" "チャ"

chu' :: IsR r => r
chu' = toR "chu" "チュ"

cho' :: IsR r => r
cho' = toR "cho" "チョ"

nya' :: IsR r => r
nya' = toR "nya" "ニャ"

nyu' :: IsR r => r
nyu' = toR "nyu" "ニュ"

nyo' :: IsR r => r
nyo' = toR "nyo" "ニョ"

hya' :: IsR r => r
hya' = toR "hya" "ヒャ"

hyu' :: IsR r => r
hyu' = toR "hyu" "ヒュ"

hyo' :: IsR r => r
hyo' = toR "hyo" "ヒョ"

bya' :: IsR r => r
bya' = toR "bya" "ビャ"

byu' :: IsR r => r
byu' = toR "byu" "ビュ"

byo' :: IsR r => r
byo' = toR "byo" "ビョ"

pya' :: IsR r => r
pya' = toR "pya" "ピャ"

pyu' :: IsR r => r
pyu' = toR "pyu" "ピュ"

pyo' :: IsR r => r
pyo' = toR "pyo" "ピョ"

mya' :: IsR r => r
mya' = toR "mya" "ミャ"

myu' :: IsR r => r
myu' = toR "myu" "ミュ"

myo' :: IsR r => r
myo' = toR "myo" "ミョ"

rya' :: IsR r => r
rya' = toR "rya" "リャ"

ryu' :: IsR r => r
ryu' = toR "ryu" "リュ"

ryo' :: IsR r => r
ryo' = toR "ryo" "リョ"

t' :: IsR r => r
t' = toR "t" "ッ"
