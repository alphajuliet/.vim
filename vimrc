".vimrc
" ---------------------

set nocompatible
filetype off

" Enable rainbox parens, esp for Clojure
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

au BufEnter *.hs compiler ghc
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" map <Leader>s :SyntasticToggleMode<CR>
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0

" let g:haddock_browser="/Applications/Safari.app/Contents/MacOS/Safari"
" let g:haddock_docdir="/usr/local/share/doc/ghc/html/"
" let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
" let g:haskellmode_completion_ghc = 1

" map <silent> tw :GhcModTypeInsert<CR>
" map <silent> ts :GhcModSplitFunCase<CR>
" map <silent> tq :GhcModType<CR>
" map <silent> te :GhcModTypeClear<CR>

" let g:haskell_tabular = 1
" vmap a= :Tabularize /=<CR>
" vmap a; :Tabularize /::<CR>
" vmap a- :Tabularize /-><CR>

" Enable built-in macros
runtime macros/matchit.vim

" Additional filetype recognition
autocmd BufNewFile,BufReadPost *.rq set filetype=sparql
autocmd BufNewFile,BufReadPost *.ttl set filetype=n3
"autocmd BufNewFile,BufReadPost *.purs set filetype=haskell
autocmd BufNewFile,BufReadPost *.rkt,*.rktl set filetype=scheme

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
