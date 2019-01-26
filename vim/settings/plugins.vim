" ----- PLUGINS ----- 
if has("gui_running")
    call plug#begin('~/.vim/plugged')
else
    call plug#begin('~/.local.share/nvim/plugged')
endif
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary' 
if has("gui_running")
    Plug 'tpope/vim-vinegar'
else
    Plug 'justinmk/vim-dirvish'
    Plug 'kristijanhusak/vim-dirvish-git'
endif
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'Yggdroot/indentLine'
Plug 'lifepillar/vim-solarized8'
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ONLY IF YOU'RE IN i3
" Plug 'dylanaraps/wal.vim' 
call plug#end()

" ----- Remap Leader key to ;
let mapleader = ";"

" ----- justinmk/vim-dirvish -----
nmap = <CR>

" ----- vim-syntastic/syntastic -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"

" ----- airblade/vim-gitgutter -----
let g:airline#extensions#hunks#non_zero_only = 1

" ----- Raimondi/delimitMate -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- ctrlpvim/ctrlp.vim -----
nmap <C-c> :CtrlPBuffer<CR>
nmap <C-x> :CtrlP<CR>

" ----- Yggdroot/indentLine -----
let g:indentLine_char = "|"

" ----- junegunn/goyo.vim -----
nmap <silent> <leader>g :Goyo 75x75-40%<CR>
" nmap <silent> <leader>g :Goyo 60x75-40%<CR>
let g:goyo_linenr = 1

" ----- aserebryakov/vim-todo-lists -----
let g:VimTodoListsMoveItems = 0

" ----- vim-airline/vim-airline -----
set laststatus=2

