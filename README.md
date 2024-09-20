## Personal nVIM Config File.

### Dependencies:

Packer installation:

```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

ripgrep installation:

```sh
brew install ripgrep
```

Then just call `nvim` and run `:PackerSync`.


You can alias `vim` to call `nvim` by adding to your `.zshrc` file:
```sh
alias vim="nvim"
```
