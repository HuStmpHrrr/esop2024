# Layered Modal Type Theory: Where Meta-programming Meets Intensional Analysis

This artifact contains the Agda mechanization of a presheaf model of the simply typed
layered modal type theory appearing at ESOP 2024. This artifact is self-contained, 
provided an Agda installation. The mechanization is tested to work with Agda 2.6.3.

## Technical Report

A full technical report for this artifact is available
[here](https://arxiv.org/abs/2305.06548). 

## Type-checking

This artifact type-checks in safe Agda, i.e. with the following flags:

```agda
{-# OPTIONS --without-K --safe #-}
```

so that it ensures the mechanization is constructed in a consistent environment and is
complete.

The artifact also depends on agda-stdlib which is included as a submodule or
distributed in `lib/`. 

You can either load `src/README.agda` in Emacs, or run

```
agda src/README.agda
```

in the console.

## Agda Installation

It is recommended to build Agda from source. To do so, one would need to install
`stack`. This can be done via

``` bash
curl -sSL https://get.haskellstack.org/ | sh
```

Then the following script will use `stack` to install Agda in `~/.local/bin/`.

``` bash
git clone https://github.com/agda/agda
cd agda
git checkout release-2.6.3
cp stack-8.8.4.yaml stack.yaml # choose your favourite Haskell version
stack install # it is going to take a while
cp ~/.local/bin/agda ~/.local/bin/agda-2.6.3
cp ~/.local/bin/agda-mode ~/.local/bin/agda-mode-2.6.3
```

If Agda does not run, please check to make sure it is in your PATH.
