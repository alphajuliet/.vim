".vimrc
" ---------------------

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" ---------------------
" My bundles

" UI
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/rainbow_parentheses.vim'

" Languages
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rake'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-markdown'
Bundle 'n3.vim'
Bundle 'sparql.vim'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'pangloss/vim-javascript'
Bundle 'leshill/vim-json'
Bundle 'itspriddle/vim-jquery'

" ---------------------
"Text formatting
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set cindent

"UI
set number
set laststatus=2
set wrap
set textwidth=79
set formatoptions=qrn1
set laststatus=2
set showmode
set showcmd
set showmatch
set hidden
set ttyfast
set ruler
set backspace=indent,eol,start

"Behaviour
set encoding=utf-8
syntax enable
syntax on
filetype plugin indent on

"Colour scheme
set background=dark
color beachcomber
highlight LineNr ctermfg=grey

"Backups
set backup
set backupdir=~/.vim/backup
set noswapfile

"Buffer shortcuts
nnoremap <silent> [b :bprevious<CR> 
nnoremap <silent> ]b :bnext<CR> 
nnoremap <silent> [B :bfirst<CR> 
nnoremap <silent> ]B :blast<CR>

"The End
