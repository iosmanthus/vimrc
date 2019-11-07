# 麗敏のVim設定

![GitHub version](https://img.shields.io/badge/version-0.2.0-green.svg) [![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity) [![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://t.me/idragonflyx)

### Objective

* Create a `Vim` configuration for `Rust` development
* Backup my own `Vim` configuration

### Plugins Configuration

1. Configuration per plugin; Each plugin is configured by a vim script located in `modules/` whose name is the plugin name with suffix `.vim`.
```sh
modules
├── coc.nvim.vim # https://github.com/neoclide/coc.nvim
├── colorscheme.vim # Colorscheme settings
├── ctrlp.vim
├── incsearch.vim
├── indentLine.vim
├── nerdtree.vim
├── ultisnips.vim
├── vim-airline-themes.vim
├── vim-airline.vim
├── vim-autoformat.vim
...
```
2. Load configuration by a special function. Each plugin configuration creates a script local function named `s:setup()` which should be called at the end of the file manually. All configuration for the plugin should be placed in it.
3. Enable configuration by loading it in `vimrc`. If you want to enable a configuration for a specific plugin, add a line in `vimrc` to include the configuration.
```vim
runtime! ./modules/pluginx.vim " load configuration for `pluginx`
```
Here is an example configuration for [vim-plug](https://github.com/iosmanthus/vimrc/blob/master/modules/vim-plug.vim).

### Core plugins

* [`coc.nvim`](https://github.com/neoclide/coc.nvim):  Intellisense engine for vim8 & neovim, full language server protocol support as VSCode
* [`vim-plug`](https://github.com/junegunn/vim-plug): Minimalist Vim Plugin Manager
* [`vim-which-key`](https://github.com/): Vim plugin that shows keybindings in popup

Check out all the plugin in `vimrc` if you want.

### Installation
1. Clone the repository to `~/.vim`
```sh
git clone https://github.com/iosmanthus/vimrc.git .vim
```
2. Migration from `Vim` to `NeoVim`: [migrate from vim](https://neovim.io/doc/user/nvim.html#nvim-from-vim)
