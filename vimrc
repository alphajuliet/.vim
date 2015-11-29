".vimrc
" ---------------------

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" ---------------------
" My bundles

" UI
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/rainbow_parentheses.vim'

" General
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'

" Languages
Plugin 'tpope/vim-markdown'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-rake'
Plugin 'vim-ruby/vim-ruby'
Plugin 'n3.vim'
Plugin 'sparql.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'leshill/vim-json'
Plugin 'itspriddle/vim-jquery'
Plugin 'digitaltoad/vim-jade'
Plugin 'ragtag.vim'
Plugin 'JuliaLang/julia-vim'
Plugin 'elixir-lang/vim-elixir'

Plugin 'lukerandall/haskellmode-vim'
"Plugin 'eagletmt/ghcmod-vim'
Plugin 'shougo/vimproc.vim'

" Clojure
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-classpath.git'
Plugin 'guns/vim-clojure-highlight'

" Enable rainbox parens, esp for Clojure
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

au BufEnter *.hs compiler ghc
let g:haddock_browser="/Applications/Safari.app/Contents/MacOS/Safari"
let g:haddock_docdir="/usr/local/share/doc/ghc/html/"

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
