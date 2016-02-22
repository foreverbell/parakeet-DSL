# parakeet-DSL

An embedded DSL for [parakeet](https://github.com/foreverbell/parakeet).

## Disclaimer

It is experimental and useless!

## Introduction

Haskell is powerful at building fantastic DSL. By using the so-called [free monad](http://comonad.com/reader/2008/monads-for-free/), one can design a DSL in a monadic context. 

parakeet-DSL does nearly the same thing as [parakeet](https://github.com/foreverbell/parakeet). The main different is that parakeet-DSL implement a DSL to directly mix Japanese & Romaji in Haskell code.

For a concrete example, see [here](https://raw.githubusercontent.com/foreverbell/parakeet-DSL/master/src/Main.hs) (Yes, one of my favourites, Kouji Wada's "Butter fly").

## Have a try!

```bash
$ stack init
$ stack build
$ stack exec parakeet-DSL > Butter-fly.tex && xelatex Butter-fly.tex
$ xdg-open Butter-fly.pdf
```
