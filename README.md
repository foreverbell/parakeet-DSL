# parakeet-DSL

An embedded DSL for [parakeet](https://github.com/foreverbell/parakeet).

## Disclaimer

It is experimental and useless!

## Introduction

Haskell is powerful at building fantastic DSL. By using the so-called [free monad](http://comonad.com/reader/2008/monads-for-free/), one can design a DSL in a monadic context. 

parakeet-DSL does nearly the same thing as [parakeet](https://github.com/foreverbell/parakeet). The main difference is that parakeet-DSL implements a DSL to directly mix Japanese & Romaji in Haskell code.

For a concrete example, see [here](https://raw.githubusercontent.com/foreverbell/parakeet-DSL/master/exe/Main.hs) (Yes, picked from one of my favourites, Kouji Wada's "Butter fly").

## Technique tricks

* Ships an implementation of free monad (Control.Monad.Free) to write DSL in a monadic context.
* `(#) :: (LexemeType r) => r` is a polyvariadic operator. By putting it at the foremost of one line, you can directly write romajis like `(#) a ri ga to u` in a fantastic way. Similarly, kanji operator `k` uses the same trick.
* All romajis are polymorphic, they could be monadic values, or pure `LitR` values when used after `k` operator. Consequently, code like `k "test" (a >> e)` is malformed, and won't typecheck.

## Have a try!

```bash
$ stack init
$ stack build
$ stack exec test > Butter-fly.tex && xelatex Butter-fly.tex
$ xdg-open Butter-fly.pdf
```
