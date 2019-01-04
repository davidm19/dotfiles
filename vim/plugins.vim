" ----- PLUGINS ----- 
call plug#begin('~/.local.share/nvim/plugged')
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-commentary' 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'junegunn/goyo.vim'
Plug 'aserebryakov/vim-todo-lists'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'lifepillar/vim-solarized8'
if has("gui_running")
	Plug 'itchyny/lightline.vim'
endif
call plug#end()

" ----- Remap Leader key to ;
let mapleader = ";"

" ----- justinmk/vim-dirvish -----
nmap = <CR>

" ----- vim-syntastic/syntastic -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
" let g:syntastic_python_checkers = ['pycodestyle']

" ----- airblade/vim-gitgutter -----
let g:airline#extensions#hunks#non_zero_only = 1

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- ctrlpvim/ctrlp.vim settings -----
nmap <C-c> :CtrlPBuffer<CR>

" ----- junegunn/goyo.vim -----
nmap <silent> <leader>z :Goyo 60x75-40%<CR>
let g:goyo_linenr = 1

" ----- aserebryakov/vim-todo-lists -----
let g:VimTodoListsMoveItems = 0

" ----- nathanaelkane/vim-indent-guides -----
let g:indent_guides_enable_on_vim_startup = 1
