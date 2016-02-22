{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleInstances #-}

module Text.Parakeet.DSL ( 
  Lexeme
, (#)
, h, k, lit, kanji, eol

, a, i, u, e, o
, ka, ki, ku, ke, ko
, ga, gi, gu, ge, go
, sa, shi, su, se, so
, za, ji, zu, ze, zo
, ta, chi, tsu, te, to
, da, di, du, de, do_
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

) where

import Prelude hiding (pi)

import Control.Monad.Free (liftF)
import Control.Monad (void)

import Text.Parakeet.Primitive

class LexemeType r where
  lexemeFold :: Lexeme a -> r

instance (a ~ ()) => LexemeType (Lexeme a) where
  lexemeFold = void 

instance (b ~ Lexeme a, LexemeType r) => LexemeType (b -> r) where
  lexemeFold ls = \l -> lexemeFold (ls >> l)

class IsR r where
  toR :: String -> r

instance (a ~ ()) => IsR (Lexeme a) where
  toR r = liftF $ Romaji r ()

instance IsR LitR where
  toR r = LitR r

(#) :: (LexemeType r) => Lexeme () -> r
(#) = lexemeFold

lit :: String -> Lexeme ()
lit l = liftF $ Lit l ()

kanji :: String -> [LitR] -> Lexeme ()
kanji k rs = liftF $ Kanji k rs ()

h :: Lexeme a -> Lexeme ()
h l = liftF $ Hiragana (SomeLexeme l) ()

k :: Lexeme a -> Lexeme ()
k l = liftF $ Katakana (SomeLexeme l) ()

eol :: Lexeme ()
eol = liftF $ EOL ()

a :: IsR r => r
a = toR "a"

i :: IsR r => r
i = toR "i"

u :: IsR r => r
u = toR "u"

e :: IsR r => r
e = toR "e"

o :: IsR r => r
o = toR "o"

ka :: IsR r => r
ka = toR "ka"

ki :: IsR r => r
ki = toR "ki"

ku :: IsR r => r
ku = toR "ku"

ke :: IsR r => r
ke = toR "ke"

ko :: IsR r => r
ko = toR "ko"

ga :: IsR r => r
ga = toR "ga"

gi :: IsR r => r
gi = toR "gi"

gu :: IsR r => r
gu = toR "gu"

ge :: IsR r => r
ge = toR "ge"

go :: IsR r => r
go = toR "go"

sa :: IsR r => r
sa = toR "sa"

shi :: IsR r => r
shi = toR "shi"

su :: IsR r => r
su = toR "su"

se :: IsR r => r
se = toR "se"

so :: IsR r => r
so = toR "so"

za :: IsR r => r
za = toR "za"

ji :: IsR r => r
ji = toR "ji"

zu :: IsR r => r
zu = toR "zu"

ze :: IsR r => r
ze = toR "ze"

zo :: IsR r => r
zo = toR "zo"

ta :: IsR r => r
ta = toR "ta"

chi :: IsR r => r
chi = toR "chi"

tsu :: IsR r => r
tsu = toR "tsu"

te :: IsR r => r
te = toR "te"

to :: IsR r => r
to = toR "to"

da :: IsR r => r
da = toR "da"

di :: IsR r => r
di = toR "di"

du :: IsR r => r
du = toR "du"

de :: IsR r => r
de = toR "de"

do_ :: IsR r => r
do_ = toR "do"

na :: IsR r => r
na = toR "na"

ni :: IsR r => r
ni = toR "ni"

nu :: IsR r => r
nu = toR "nu"

ne :: IsR r => r
ne = toR "ne"

no :: IsR r => r
no = toR "no"

ha :: IsR r => r
ha = toR "ha"

hi :: IsR r => r
hi = toR "hi"

fu :: IsR r => r
fu = toR "fu"

he :: IsR r => r
he = toR "he"

ho :: IsR r => r
ho = toR "ho"

ba :: IsR r => r
ba = toR "ba"

bi :: IsR r => r
bi = toR "bi"

bu :: IsR r => r
bu = toR "bu"

be :: IsR r => r
be = toR "be"

bo :: IsR r => r
bo = toR "bo"

pa :: IsR r => r
pa = toR "pa"

pi :: IsR r => r
pi = toR "pi"

pu :: IsR r => r
pu = toR "pu"

pe :: IsR r => r
pe = toR "pe"

po :: IsR r => r
po = toR "po"

ma :: IsR r => r
ma = toR "ma"

mi :: IsR r => r
mi = toR "mi"

mu :: IsR r => r
mu = toR "mu"

me :: IsR r => r
me = toR "me"

mo :: IsR r => r
mo = toR "mo"

ya :: IsR r => r
ya = toR "ya"

yu :: IsR r => r
yu = toR "yu"

yo :: IsR r => r
yo = toR "yo"

ra :: IsR r => r
ra = toR "ra"

ri :: IsR r => r
ri = toR "ri"

ru :: IsR r => r
ru = toR "ru"

re :: IsR r => r
re = toR "re"

ro :: IsR r => r
ro = toR "ro"

wa :: IsR r => r
wa = toR "wa"

wo :: IsR r => r
wo = toR "wo"

n :: IsR r => r
n = toR "n"

kya :: IsR r => r
kya = toR "kya"

kyu :: IsR r => r
kyu = toR "kyu"

kyo :: IsR r => r
kyo = toR "kyo"

gya :: IsR r => r
gya = toR "gya"

gyu :: IsR r => r
gyu = toR "gyu"

gyo :: IsR r => r
gyo = toR "gyo"

sha :: IsR r => r
sha = toR "sha"

shu :: IsR r => r
shu = toR "shu"

sho :: IsR r => r
sho = toR "sho"

ja :: IsR r => r
ja = toR "ja"

ju :: IsR r => r
ju = toR "ju"

jo :: IsR r => r
jo = toR "jo"

cha :: IsR r => r
cha = toR "cha"

chu :: IsR r => r
chu = toR "chu"

cho :: IsR r => r
cho = toR "cho"

nya :: IsR r => r
nya = toR "nya"

nyu :: IsR r => r
nyu = toR "nyu"

nyo :: IsR r => r
nyo = toR "nyo"

hya :: IsR r => r
hya = toR "hya"

hyu :: IsR r => r
hyu = toR "hyu"

hyo :: IsR r => r
hyo = toR "hyo"

bya :: IsR r => r
bya = toR "bya"

byu :: IsR r => r
byu = toR "byu"

byo :: IsR r => r
byo = toR "byo"

pya :: IsR r => r
pya = toR "pya"

pyu :: IsR r => r
pyu = toR "pyu"

pyo :: IsR r => r
pyo = toR "pyo"

mya :: IsR r => r
mya = toR "mya"

myu :: IsR r => r
myu = toR "myu"

myo :: IsR r => r
myo = toR "myo"

rya :: IsR r => r
rya = toR "rya"

ryu :: IsR r => r
ryu = toR "ryu"

ryo :: IsR r => r
ryo = toR "ryo"
