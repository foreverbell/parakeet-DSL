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
, k', t', p', s'
, a_, i_, u_, e_, o_
) where

import Text.Parakeet.Primitive

a' :: IsKana r => r
a' = toKana "a" "ア"

i' :: IsKana r => r
i' = toKana "i" "イ"

u' :: IsKana r => r
u' = toKana "u" "ウ"

e' :: IsKana r => r
e' = toKana "e" "エ"

o' :: IsKana r => r
o' = toKana "o" "オ"

ka' :: IsKana r => r
ka' = toKana "ka" "カ"

ki' :: IsKana r => r
ki' = toKana "ki" "キ"

ku' :: IsKana r => r
ku' = toKana "ku" "ク"

ke' :: IsKana r => r
ke' = toKana "ke" "ケ"

ko' :: IsKana r => r
ko' = toKana "ko" "コ"

ga' :: IsKana r => r
ga' = toKana "ga" "ガ"

gi' :: IsKana r => r
gi' = toKana "gi" "ギ"

gu' :: IsKana r => r
gu' = toKana "gu" "グ"

ge' :: IsKana r => r
ge' = toKana "ge" "ゲ"

go' :: IsKana r => r
go' = toKana "go" "ゴ"

sa' :: IsKana r => r
sa' = toKana "sa" "サ"

shi' :: IsKana r => r
shi' = toKana "shi" "シ"

su' :: IsKana r => r
su' = toKana "su" "ス"

se' :: IsKana r => r
se' = toKana "se" "セ"

so' :: IsKana r => r
so' = toKana "so" "ソ"

za' :: IsKana r => r
za' = toKana "za" "ザ"

ji' :: IsKana r => r
ji' = toKana "ji" "ジ"

zu' :: IsKana r => r
zu' = toKana "zu" "ズ"

ze' :: IsKana r => r
ze' = toKana "ze" "ゼ"

zo' :: IsKana r => r
zo' = toKana "zo" "ゾ"

ta' :: IsKana r => r
ta' = toKana "ta" "タ"

chi' :: IsKana r => r
chi' = toKana "chi" "チ"

tsu' :: IsKana r => r
tsu' = toKana "tsu" "ツ"

te' :: IsKana r => r
te' = toKana "te" "テ"

to' :: IsKana r => r
to' = toKana "to" "ト"

da' :: IsKana r => r
da' = toKana "da" "ダ"

di' :: IsKana r => r
di' = toKana "di" "ヂ"

du' :: IsKana r => r
du' = toKana "du" "ヅ"

de' :: IsKana r => r
de' = toKana "de" "デ"

d0' :: IsKana r => r
d0' = toKana "do" "ド"

na' :: IsKana r => r
na' = toKana "na" "ナ"

ni' :: IsKana r => r
ni' = toKana "ni" "ニ"

nu' :: IsKana r => r
nu' = toKana "nu" "ヌ"

ne' :: IsKana r => r
ne' = toKana "ne" "ネ"

no' :: IsKana r => r
no' = toKana "no" "ノ"

ha' :: IsKana r => r
ha' = toKana "ha" "ハ"

hi' :: IsKana r => r
hi' = toKana "hi" "ヒ"

fu' :: IsKana r => r
fu' = toKana "fu" "フ"

he' :: IsKana r => r
he' = toKana "he" "ヘ"

ho' :: IsKana r => r
ho' = toKana "ho" "ホ"

ba' :: IsKana r => r
ba' = toKana "ba" "バ"

bi' :: IsKana r => r
bi' = toKana "bi" "ビ"

bu' :: IsKana r => r
bu' = toKana "bu" "ブ"

be' :: IsKana r => r
be' = toKana "be" "ベ"

bo' :: IsKana r => r
bo' = toKana "bo" "ボ"

pa' :: IsKana r => r
pa' = toKana "pa" "パ"

pi' :: IsKana r => r
pi' = toKana "pi" "ピ"

pu' :: IsKana r => r
pu' = toKana "pu" "プ"

pe' :: IsKana r => r
pe' = toKana "pe" "ペ"

po' :: IsKana r => r
po' = toKana "po" "ポ"

ma' :: IsKana r => r
ma' = toKana "ma" "マ"

mi' :: IsKana r => r
mi' = toKana "mi" "ミ"

mu' :: IsKana r => r
mu' = toKana "mu" "ム"

me' :: IsKana r => r
me' = toKana "me" "メ"

mo' :: IsKana r => r
mo' = toKana "mo" "モ"

ya' :: IsKana r => r
ya' = toKana "ya" "ヤ"

yu' :: IsKana r => r
yu' = toKana "yu" "ユ"

yo' :: IsKana r => r
yo' = toKana "yo" "ヨ"

ra' :: IsKana r => r
ra' = toKana "ra" "ラ"

ri' :: IsKana r => r
ri' = toKana "ri" "リ"

ru' :: IsKana r => r
ru' = toKana "ru" "ル"

re' :: IsKana r => r
re' = toKana "re" "レ"

ro' :: IsKana r => r
ro' = toKana "ro" "ロ"

wa' :: IsKana r => r
wa' = toKana "wa" "ワ"

wo' :: IsKana r => r
wo' = toKana "wo" "ヲ"

n' :: IsKana r => r
n' = toKana "n" "ン"

kya' :: IsKana r => r
kya' = toKana "kya" "キャ"

kyu' :: IsKana r => r
kyu' = toKana "kyu" "キュ"

kyo' :: IsKana r => r
kyo' = toKana "kyo" "キョ"

gya' :: IsKana r => r
gya' = toKana "gya" "ギャ"

gyu' :: IsKana r => r
gyu' = toKana "gyu" "ギュ"

gyo' :: IsKana r => r
gyo' = toKana "gyo" "ギョ"

sha' :: IsKana r => r
sha' = toKana "sha" "シャ"

shu' :: IsKana r => r
shu' = toKana "shu" "シュ"

sho' :: IsKana r => r
sho' = toKana "sho" "ショ"

ja' :: IsKana r => r
ja' = toKana "ja" "ジャ"

ju' :: IsKana r => r
ju' = toKana "ju" "ジュ"

jo' :: IsKana r => r
jo' = toKana "jo" "ジョ"

cha' :: IsKana r => r
cha' = toKana "cha" "チャ"

chu' :: IsKana r => r
chu' = toKana "chu" "チュ"

cho' :: IsKana r => r
cho' = toKana "cho" "チョ"

nya' :: IsKana r => r
nya' = toKana "nya" "ニャ"

nyu' :: IsKana r => r
nyu' = toKana "nyu" "ニュ"

nyo' :: IsKana r => r
nyo' = toKana "nyo" "ニョ"

hya' :: IsKana r => r
hya' = toKana "hya" "ヒャ"

hyu' :: IsKana r => r
hyu' = toKana "hyu" "ヒュ"

hyo' :: IsKana r => r
hyo' = toKana "hyo" "ヒョ"

bya' :: IsKana r => r
bya' = toKana "bya" "ビャ"

byu' :: IsKana r => r
byu' = toKana "byu" "ビュ"

byo' :: IsKana r => r
byo' = toKana "byo" "ビョ"

pya' :: IsKana r => r
pya' = toKana "pya" "ピャ"

pyu' :: IsKana r => r
pyu' = toKana "pyu" "ピュ"

pyo' :: IsKana r => r
pyo' = toKana "pyo" "ピョ"

mya' :: IsKana r => r
mya' = toKana "mya" "ミャ"

myu' :: IsKana r => r
myu' = toKana "myu" "ミュ"

myo' :: IsKana r => r
myo' = toKana "myo" "ミョ"

rya' :: IsKana r => r
rya' = toKana "rya" "リャ"

ryu' :: IsKana r => r
ryu' = toKana "ryu" "リュ"

ryo' :: IsKana r => r
ryo' = toKana "ryo" "リョ"

k' :: IsKana r => r
k' = toKana "k" "ッ"

t' :: IsKana r => r
t' = toKana "t" "ッ"

p' :: IsKana r => r
p' = toKana "p" "ッ"

s' :: IsKana r => r
s' = toKana "s" "ッ"

a_ :: IsKana r => r
a_ = toKana "a" "ー"

i_ :: IsKana r => r
i_ = toKana "i" "ー"

u_ :: IsKana r => r
u_ = toKana "u" "ー"

e_ :: IsKana r => r
e_ = toKana "e" "ー"

o_ :: IsKana r => r
o_ = toKana "o" "ー"
