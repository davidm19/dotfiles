" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'Raimondi/delimitMate'
Plug 'ervandew/supertab'
if (has("gui_running")) 
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-syntastic/syntastic'
    Plug 'tpope/vim-surround'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'aserebryakov/vim-todo-lists'
    Plug 'lifepillar/vim-solarized8'
    Plug 'itchyny/lightline.vim'
endif
call plug#end()

" ----- Remap Leader key to ;
let mapleader = ";"

" ----- Raimondi/delimitMate settings -----
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


    " ----- ctrlpvim/ctrlp.vim settings -----
    nmap <C-c> :CtrlPBuffer<CR>

    " ----- junegunn/goyo.vim -----
    nmap <silent> <leader>z :Goyo 60x75-40%<CR>
    let g:goyo_linenr = 1

    " ----- aserebryakov/vim-todo-lists -----
    let g:VimTodoListsMoveItems = 0
endif
