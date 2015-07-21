".vimrc
" ---------------------

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

" ---------------------
" My bundles

" UI
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/rainbow_parentheses.vim'

" Languages
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rake'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'n3.vim'
Plugin 'sparql.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'leshill/vim-json'
Plugin 'itspriddle/vim-jquery'
Plugin 'digitaltoad/vim-jade'
Plugin 'ragtag.vim'
Plugin 'JuliaLang/julia-vim'
Plugin 'elixir-lang/vim-elixir'

Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'

" nREPL support
" Plugin 'vim-fireplace.git'
" Plugin 'vim-classpath.git'
" Plugin 'vim-clojure-static.git'

" Enable build-in macros
runtime macros/matchit.vim

call vundle#end()

" Additional filetype recognition
autocmd BufNewFile,BufReadPost *.rq set filetype=sparql
autocmd BufNewFile,BufReadPost *.ttl set filetype=n3

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
colorscheme beachcomber
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
