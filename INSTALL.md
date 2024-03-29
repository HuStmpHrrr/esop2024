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

Then you can either load `src/README.agda` in Emacs, or run

```
agda src/README.agda
```

in the console.
