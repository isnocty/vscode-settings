" Plugin management (vim-plug)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

call plug#end()

set nocompatible
set clipboard+=unnamedplus
set number
set relativenumber
set ruler
set wildmenu
set showcmd
set cursorline
set signcolumn=yes
set scrolloff=8
set sidescrolloff=8
set ignorecase
set smartcase
set incsearch
set hlsearch
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set encoding=utf-8
set linebreak
set wrap
set lazyredraw
set ttyfast
set backspace=indent,eol,start
set mouse=a
set updatetime=300
set shortmess+=c
syntax on
filetype plugin indent on

" Theme
set termguicolors
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox
set background=dark

" Plugins

" vim-airline
let g:airline_theme = 'gruvbox'

" Mappings
nnoremap <silent> <leader>l :nohlsearch<CR><C-l>
vnoremap <Leader>y :w !wl-copy<CR>
nnoremap <Leader>y :.w !wl-copy<CR>
nnoremap <Leader>Y :%w !wl-copy<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>e :Explore<CR>
nnoremap <leader>s :split<CR>
map <leader>af :%!clang-format<CR>
set wildmode=longest,list,full
set wildmenu

