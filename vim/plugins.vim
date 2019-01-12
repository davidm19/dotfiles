call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
if (has("gui_running")) 
    Plug 'airblade/vim-gitgutter'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'junegunn/goyo.vim'
    " Plug 'lifepillar/vim-solarized8'
    Plug 'rakr/vim-one'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-syntastic/syntastic'
    Plug 'Yggdroot/indentLine'
endif
call plug#end()

" ----- Remap Leader key to ;
let mapleader = ";"

" ----- Raimondi/delimitMate -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- tpope/vim-vinegar -----
nmap = <CR>

if (has("gui_running"))
    " ----- vim-syntastic/syntastic -----
    let g:syntastic_error_symbol = '✘'
    let g:syntastic_warning_symbol = "▲"

    " ----- airblade/vim-gitgutter -----
    let g:airline#extensions#hunks#non_zero_only = 1


    " ----- ctrlpvim/ctrlp.vim -----
    nmap <C-c> :CtrlPBuffer<CR>

    " ----- Yggdroot/indentLine -----
    let g:indentLine_char = "|"


    " ----- junegunn/goyo.vim -----
    nmap <silent> <leader>g :Goyo 60x75-40%<CR>
    let g:goyo_linenr = 1

    " ----- aserebryakov/vim-todo-lists -----
    let g:VimTodoListsMoveItems = 0

    " ----- vim-airline/vim-airline -----
    set laststatus=2
endif
