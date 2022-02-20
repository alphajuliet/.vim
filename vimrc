".vimrc
" ---------------------

set nocompatible
filetype off

" Enable rainbox parens, esp for Clojure
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Enable built-in macros
runtime macros/matchit.vim

" Additional filetype recognition
autocmd BufNewFile,BufReadPost *.rq set filetype=sparql
autocmd BufNewFile,BufReadPost *.ttl set filetype=n3
"autocmd BufNewFile,BufReadPost *.purs set filetype=haskell
autocmd BufNewFile,BufReadPost *.rkt,*.rktl set filetype=scheme
autocmd BufNewFile,BufRead *.wl set syntax=mma

au! BufRead,BufNewFile *.bqn set filetype=bqn
au! BufRead,BufNewFile * if getline(1) =~ '^#!.*bqn$' | set filetype=bqn | endif

map <Leader>n :NERDTreeToggle<CR>

" Buffer shortcuts
nnoremap <silent> [b :bprevious<CR> 
nnoremap <silent> ]b :bnext<CR> 
nnoremap <silent> [B :bfirst<CR> 
nnoremap <silent> ]B :blast<CR>

" ---------------------
"Text formatting
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set cindent

"UI
set nocompatible
set number
set laststatus=2
set nowrap
set showmode
set textwidth=80
set expandtab
set incsearch
set showcmd
set showmatch
set hidden
set ttyfast
set ruler
set backspace=indent,eol,start
set mouse=a
"set clipboard=unnamedplus,autoselect
set clipboard=autoselect
set cmdheight=1
set completeopt=menuone,menu,longest

"Behaviour
set history=1000
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

"The End
