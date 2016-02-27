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
, k, t, p, s
, wa1
) where

import Prelude hiding (pi)
import Text.Parakeet.Primitive

a :: IsKana r => r
a = toKana "a" "あ"

i :: IsKana r => r
i = toKana "i" "い"

u :: IsKana r => r
u = toKana "u" "う"

e :: IsKana r => r
e = toKana "e" "え"

o :: IsKana r => r
o = toKana "o" "お"

ka :: IsKana r => r
ka = toKana "ka" "か"

ki :: IsKana r => r
ki = toKana "ki" "き"

ku :: IsKana r => r
ku = toKana "ku" "く"

ke :: IsKana r => r
ke = toKana "ke" "け"

ko :: IsKana r => r
ko = toKana "ko" "こ"

ga :: IsKana r => r
ga = toKana "ga" "が"

gi :: IsKana r => r
gi = toKana "gi" "ぎ"

gu :: IsKana r => r
gu = toKana "gu" "ぐ"

ge :: IsKana r => r
ge = toKana "ge" "げ"

go :: IsKana r => r
go = toKana "go" "ご"

sa :: IsKana r => r
sa = toKana "sa" "さ"

shi :: IsKana r => r
shi = toKana "shi" "し"

su :: IsKana r => r
su = toKana "su" "す"

se :: IsKana r => r
se = toKana "se" "せ"

so :: IsKana r => r
so = toKana "so" "そ"

za :: IsKana r => r
za = toKana "za" "ざ"

ji :: IsKana r => r
ji = toKana "ji" "じ"

zu :: IsKana r => r
zu = toKana "zu" "ず"

ze :: IsKana r => r
ze = toKana "ze" "ぜ"

zo :: IsKana r => r
zo = toKana "zo" "ぞ"

ta :: IsKana r => r
ta = toKana "ta" "た"

chi :: IsKana r => r
chi = toKana "chi" "ち"

tsu :: IsKana r => r
tsu = toKana "tsu" "つ"

te :: IsKana r => r
te = toKana "te" "て"

to :: IsKana r => r
to = toKana "to" "と"

da :: IsKana r => r
da = toKana "da" "だ"

di :: IsKana r => r
di = toKana "di" "ぢ"

du :: IsKana r => r
du = toKana "du" "づ"

de :: IsKana r => r
de = toKana "de" "で"

d0 :: IsKana r => r
d0 = toKana "do" "ど"

na :: IsKana r => r
na = toKana "na" "な"

ni :: IsKana r => r
ni = toKana "ni" "に"

nu :: IsKana r => r
nu = toKana "nu" "ぬ"

ne :: IsKana r => r
ne = toKana "ne" "ね"

no :: IsKana r => r
no = toKana "no" "の"

ha :: IsKana r => r
ha = toKana "ha" "は"

hi :: IsKana r => r
hi = toKana "hi" "ひ"

fu :: IsKana r => r
fu = toKana "fu" "ふ"

he :: IsKana r => r
he = toKana "he" "へ"

ho :: IsKana r => r
ho = toKana "ho" "ほ"

ba :: IsKana r => r
ba = toKana "ba" "ば"

bi :: IsKana r => r
bi = toKana "bi" "び"

bu :: IsKana r => r
bu = toKana "bu" "ぶ"

be :: IsKana r => r
be = toKana "be" "べ"

bo :: IsKana r => r
bo = toKana "bo" "ぼ"

pa :: IsKana r => r
pa = toKana "pa" "ぱ"

pi :: IsKana r => r
pi = toKana "pi" "ぴ"

pu :: IsKana r => r
pu = toKana "pu" "ぷ"

pe :: IsKana r => r
pe = toKana "pe" "ぺ"

po :: IsKana r => r
po = toKana "po" "ぽ"

ma :: IsKana r => r
ma = toKana "ma" "ま"

mi :: IsKana r => r
mi = toKana "mi" "み"

mu :: IsKana r => r
mu = toKana "mu" "む"

me :: IsKana r => r
me = toKana "me" "め"

mo :: IsKana r => r
mo = toKana "mo" "も"

ya :: IsKana r => r
ya = toKana "ya" "や"

yu :: IsKana r => r
yu = toKana "yu" "ゆ"

yo :: IsKana r => r
yo = toKana "yo" "よ"

ra :: IsKana r => r
ra = toKana "ra" "ら"

ri :: IsKana r => r
ri = toKana "ri" "り"

ru :: IsKana r => r
ru = toKana "ru" "る"

re :: IsKana r => r
re = toKana "re" "れ"

ro :: IsKana r => r
ro = toKana "ro" "ろ"

wa :: IsKana r => r
wa = toKana "wa" "わ"

wo :: IsKana r => r
wo = toKana "wo" "を"

n :: IsKana r => r
n = toKana "n" "ん"

kya :: IsKana r => r
kya = toKana "kya" "きゃ"

kyu :: IsKana r => r
kyu = toKana "kyu" "きゅ"

kyo :: IsKana r => r
kyo = toKana "kyo" "きょ"

gya :: IsKana r => r
gya = toKana "gya" "ぎゃ"

gyu :: IsKana r => r
gyu = toKana "gyu" "ぎゅ"

gyo :: IsKana r => r
gyo = toKana "gyo" "ぎょ"

sha :: IsKana r => r
sha = toKana "sha" "しゃ"

shu :: IsKana r => r
shu = toKana "shu" "しゅ"

sho :: IsKana r => r
sho = toKana "sho" "しょ"

ja :: IsKana r => r
ja = toKana "ja" "じゃ"

ju :: IsKana r => r
ju = toKana "ju" "じゅ"

jo :: IsKana r => r
jo = toKana "jo" "じょ"

cha :: IsKana r => r
cha = toKana "cha" "ちゃ"

chu :: IsKana r => r
chu = toKana "chu" "ちゅ"

cho :: IsKana r => r
cho = toKana "cho" "ちょ"

nya :: IsKana r => r
nya = toKana "nya" "にゃ"

nyu :: IsKana r => r
nyu = toKana "nyu" "にゅ"

nyo :: IsKana r => r
nyo = toKana "nyo" "にょ"

hya :: IsKana r => r
hya = toKana "hya" "ひゃ"

hyu :: IsKana r => r
hyu = toKana "hyu" "ひゅ"

hyo :: IsKana r => r
hyo = toKana "hyo" "ひょ"

bya :: IsKana r => r
bya = toKana "bya" "びゃ"

byu :: IsKana r => r
byu = toKana "byu" "びゅ"

byo :: IsKana r => r
byo = toKana "byo" "びょ"

pya :: IsKana r => r
pya = toKana "pya" "ぴゃ"

pyu :: IsKana r => r
pyu = toKana "pyu" "ぴゅ"

pyo :: IsKana r => r
pyo = toKana "pyo" "ぴょ"

mya :: IsKana r => r
mya = toKana "mya" "みゃ"

myu :: IsKana r => r
myu = toKana "myu" "みゅ"

myo :: IsKana r => r
myo = toKana "myo" "みょ"

rya :: IsKana r => r
rya = toKana "rya" "りゃ"

ryu :: IsKana r => r
ryu = toKana "ryu" "りゅ"

ryo :: IsKana r => r
ryo = toKana "ryo" "りょ"

k :: IsKana r => r
k = toKana "k" "っ"

t :: IsKana r => r
t = toKana "t" "っ"

p :: IsKana r => r
p = toKana "p" "っ"

s :: IsKana r => r
s = toKana "s" "っ"

-- | Particles mutation
wa1 :: IsKana r => r
wa1 = toKana "wa" "は"
