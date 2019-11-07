" Copyright (c) 2019 iosmanthus
" Author: iosmanthus <isakura1024@gmail.com>
"
" Permission is hereby granted, free of charge, to any person obtaining a copy of
" this software and associated documentation files (the "Software"), to deal in
" the Software without restriction, including without limitation the rights to
" use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
" the Software, and to permit persons to whom the Software is furnished to do so,
" subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
" FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
" COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
" IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
" CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


" Basic Mapping:
" Yank utill the end of the line, instead of yank the whole line.
map Y y$

" Map semicolon as the command line trigger
map ; :

" Set `<space>` as mapleader
let mapleader = "\<space>"
" Set `,` as local mapleader
let maplocalleader=','

" --------------------------------------------------------------------------------

" Basic Options:

" NOTE: Enabling this option to fix a bug of `chriskempson/base16-vim`.
"       For more details: https://github.com/chriskempson/base16-vim#troubleshooting
set termguicolors

" Enable syntax highlight
syntax enable


" Enable short timeout
set timeoutlen=100 ttimeoutlen=0

" Place `viminfo` file into the home of vim instead of ~/.viminfo
" NOTE: Add this file to `.gitignore` for security reasons.
set viminfo+=n~/.vim/viminfo        " Viminfo file location

" Store all .swap file in `~/.vim/swap`
" NOTE: For security reasons, keep the directory only in git
"       and ignore all the files in it
set directory=~/.vim/swap           " Swap file location

" Keep only 32 lines of command mode history
set history=32

" Display the cursor position
set ruler

" Display matching brackets
set showmatch

" Show (partial) commands inputed in status line.
set showcmd

" Disable displaying the mode
set noshowmode

" Always show status bar
set laststatus=2

"  Enable line number
set number

" Show relative line number
set relativenumber

" Tab && Tab Width = 2
set tabstop=2
set shiftwidth=2
set expandtab " Expand tab

" Enable mouse
set mouse=a

" Incremental search
set incsearch
" Highlight the search result
set hlsearch

" Hide buffers when they are abandoned
set hidden

" Remove tab line
set showtabline=0

" Search strategy
set smartcase  " detect the upper alpha inteligently
set ignorecase " Do case insensitive matching
set infercase  " Keep the upper header when completes words

set pastetoggle=<F2> " Easy to paste

" Initialize plugin system ( vim-plug )
call plug#begin('~/.vim/plugged')


" Category: Auto Completion
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'iosmanthus/vim-snippets'

" Category: Search & Replace
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'terryma/vim-multiple-cursors'

" Category: Misc
Plug 'ctrlpvim/ctrlp.vim'
Plug 'chrisbra/SudoEdit.vim'
Plug 'tpope/vim-surround'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'liuchengxu/vim-which-key'
Plug 'wakatime/vim-wakatime'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'Chiel92/vim-autoformat'
Plug 'antoyo/vim-licenses'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'vim-scripts/fcitx.vim'

" Category: Git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Completion Source:
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'

" Themes:
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Syntax Highlight:
Plug 'zsiciarz/caddy.vim'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go'
Plug 'neovimhaskell/haskell-vim'
Plug 'pangloss/vim-javascript'
Plug 'cespare/vim-toml'
Plug 'octol/vim-cpp-enhanced-highlight'

" Category: Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()


runtime! ./modules/vim-plug.vim
runtime! ./modules/ultisnips.vim
runtime! ./modules/coc.nvim.vim
runtime! ./modules/nerdtree.vim
runtime! ./modules/vim-startify.vim
runtime! ./modules/vim-autoformat.vim
runtime! ./modules/vim-licenses.vim
runtime! ./modules/vim-ctrlspace.vim
runtime! ./modules/vim-easymotion.vim
runtime! ./modules/vim-easy-align.vim
runtime! ./modules/vim-airline.vim
runtime! ./modules/vim-airline-themes.vim
runtime! ./modules/colorscheme.vim
runtime! ./modules/incsearch.vim
runtime! ./modules/vim-cpp-enhanced-highlight.vim
runtime! ./modules/vim-gitgutter.vim
runtime! ./modules/ctrlp.vim
runtime! ./modules/indentLine.vim
runtime! ./modules/vim-which-key.vim
