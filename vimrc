".vimrc

call pathogen#infect()

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
set nocompatible
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
