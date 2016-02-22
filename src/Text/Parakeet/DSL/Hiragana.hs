module Text.Parakeet.DSL.Hiragana ( 
  a, i, u, e, o
, ka, ki, ku, ke, ko
, ga, gi, gu, ge, go
, sa, shi, su, se, so
, za, ji, zu, ze, zo
, ta, chi, tsu, te, to
, da, di, du, de, d0
, na, ni, nu, ne, no
, ha, hi, fu, he, ho
, ba, bi, bu, be, bo
, pa, pi, pu, pe, po
, ma, mi, mu, me, mo
, ya, yu, yo, ra, ri
, ru, re, ro, wa, wo
, n
, kya, kyu, kyo
, gya, gyu, gyo
, sha, shu, sho
, ja, ju, jo
, cha, chu, cho
, nya, nyu, nyo
, hya, hyu, hyo
, bya, byu, byo
, pya, pyu, pyo
, mya, myu, myo
, rya, ryu, ryo
, t
) where

import Prelude hiding (pi)
import Text.Parakeet.Primitive

a :: IsR r => r
a = toR "a" "あ"

i :: IsR r => r
i = toR "i" "い"

u :: IsR r => r
u = toR "u" "う"

e :: IsR r => r
e = toR "e" "え"

o :: IsR r => r
o = toR "o" "お"

ka :: IsR r => r
ka = toR "ka" "か"

ki :: IsR r => r
ki = toR "ki" "き"

ku :: IsR r => r
ku = toR "ku" "く"

ke :: IsR r => r
ke = toR "ke" "け"

ko :: IsR r => r
ko = toR "ko" "こ"

ga :: IsR r => r
ga = toR "ga" "が"

gi :: IsR r => r
gi = toR "gi" "ぎ"

gu :: IsR r => r
gu = toR "gu" "ぐ"

ge :: IsR r => r
ge = toR "ge" "げ"

go :: IsR r => r
go = toR "go" "ご"

sa :: IsR r => r
sa = toR "sa" "さ"

shi :: IsR r => r
shi = toR "shi" "し"

su :: IsR r => r
su = toR "su" "す"

se :: IsR r => r
se = toR "se" "せ"

so :: IsR r => r
so = toR "so" "そ"

za :: IsR r => r
za = toR "za" "ざ"

ji :: IsR r => r
ji = toR "ji" "じ"

zu :: IsR r => r
zu = toR "zu" "ず"

ze :: IsR r => r
ze = toR "ze" "ぜ"

zo :: IsR r => r
zo = toR "zo" "ぞ"

ta :: IsR r => r
ta = toR "ta" "た"

chi :: IsR r => r
chi = toR "chi" "ち"

tsu :: IsR r => r
tsu = toR "tsu" "つ"

te :: IsR r => r
te = toR "te" "て"

to :: IsR r => r
to = toR "to" "と"

da :: IsR r => r
da = toR "da" "だ"

di :: IsR r => r
di = toR "di" "ぢ"

du :: IsR r => r
du = toR "du" "づ"

de :: IsR r => r
de = toR "de" "で"

d0 :: IsR r => r
d0 = toR "do" "ど"

na :: IsR r => r
na = toR "na" "な"

ni :: IsR r => r
ni = toR "ni" "に"

nu :: IsR r => r
nu = toR "nu" "ぬ"

ne :: IsR r => r
ne = toR "ne" "ね"

no :: IsR r => r
no = toR "no" "の"

ha :: IsR r => r
ha = toR "ha" "は"

hi :: IsR r => r
hi = toR "hi" "ひ"

fu :: IsR r => r
fu = toR "fu" "ふ"

he :: IsR r => r
he = toR "he" "へ"

ho :: IsR r => r
ho = toR "ho" "ほ"

ba :: IsR r => r
ba = toR "ba" "ば"

bi :: IsR r => r
bi = toR "bi" "び"

bu :: IsR r => r
bu = toR "bu" "ぶ"

be :: IsR r => r
be = toR "be" "べ"

bo :: IsR r => r
bo = toR "bo" "ぼ"

pa :: IsR r => r
pa = toR "pa" "ぱ"

pi :: IsR r => r
pi = toR "pi" "ぴ"

pu :: IsR r => r
pu = toR "pu" "ぷ"

pe :: IsR r => r
pe = toR "pe" "ぺ"

po :: IsR r => r
po = toR "po" "ぽ"

ma :: IsR r => r
ma = toR "ma" "ま"

mi :: IsR r => r
mi = toR "mi" "み"

mu :: IsR r => r
mu = toR "mu" "む"

me :: IsR r => r
me = toR "me" "め"

mo :: IsR r => r
mo = toR "mo" "も"

ya :: IsR r => r
ya = toR "ya" "や"

yu :: IsR r => r
yu = toR "yu" "ゆ"

yo :: IsR r => r
yo = toR "yo" "よ"

ra :: IsR r => r
ra = toR "ra" "ら"

ri :: IsR r => r
ri = toR "ri" "り"

ru :: IsR r => r
ru = toR "ru" "る"

re :: IsR r => r
re = toR "re" "れ"

ro :: IsR r => r
ro = toR "ro" "ろ"

wa :: IsR r => r
wa = toR "wa" "わ"

wo :: IsR r => r
wo = toR "wo" "を"

n :: IsR r => r
n = toR "n" "ん"

kya :: IsR r => r
kya = toR "kya" "きゃ"

kyu :: IsR r => r
kyu = toR "kyu" "きゅ"

kyo :: IsR r => r
kyo = toR "kyo" "きょ"

gya :: IsR r => r
gya = toR "gya" "ぎゃ"

gyu :: IsR r => r
gyu = toR "gyu" "ぎゅ"

gyo :: IsR r => r
gyo = toR "gyo" "ぎょ"

sha :: IsR r => r
sha = toR "sha" "しゃ"

shu :: IsR r => r
shu = toR "shu" "しゅ"

sho :: IsR r => r
sho = toR "sho" "しょ"

ja :: IsR r => r
ja = toR "ja" "じゃ"

ju :: IsR r => r
ju = toR "ju" "じゅ"

jo :: IsR r => r
jo = toR "jo" "じょ"

cha :: IsR r => r
cha = toR "cha" "ちゃ"

chu :: IsR r => r
chu = toR "chu" "ちゅ"

cho :: IsR r => r
cho = toR "cho" "ちょ"

nya :: IsR r => r
nya = toR "nya" "にゃ"

nyu :: IsR r => r
nyu = toR "nyu" "にゅ"

nyo :: IsR r => r
nyo = toR "nyo" "にょ"

hya :: IsR r => r
hya = toR "hya" "ひゃ"

hyu :: IsR r => r
hyu = toR "hyu" "ひゅ"

hyo :: IsR r => r
hyo = toR "hyo" "ひょ"

bya :: IsR r => r
bya = toR "bya" "びゃ"

byu :: IsR r => r
byu = toR "byu" "びゅ"

byo :: IsR r => r
byo = toR "byo" "びょ"

pya :: IsR r => r
pya = toR "pya" "ぴゃ"

pyu :: IsR r => r
pyu = toR "pyu" "ぴゅ"

pyo :: IsR r => r
pyo = toR "pyo" "ぴょ"

mya :: IsR r => r
mya = toR "mya" "みゃ"

myu :: IsR r => r
myu = toR "myu" "みゅ"

myo :: IsR r => r
myo = toR "myo" "みょ"

rya :: IsR r => r
rya = toR "rya" "りゃ"

ryu :: IsR r => r
ryu = toR "ryu" "りゅ"

ryo :: IsR r => r
ryo = toR "ryo" "りょ"

t :: IsR r => r
t = toR "t" "っ"
