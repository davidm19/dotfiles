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
Plug 'rakr/vim-one'
Plug 'romainl/flattened'
call plug#end()

" Remap Leader key
let mapleader = ";"

" ----- justinmk/vim-dirvish -----
nmap = <CR>

" ----- vim-syntastic/syntastic -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"

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
nmap <silent> <leader>g :Goyo 60x75-40%<CR>
let g:goyo_linenr = 1

" ----- aserebryakov/vim-todo-lists -----
let g:VimTodoListsMoveItems = 0

" ----- key remappings -----
nmap <silent> <leader>wq :wq<CR>
nmap <silent> <leader>w :w<CR>
nmap <silent> <leader>W :wa<CR>
nmap <silent> <leader>q :q<CR>
nmap <silent> <leader>Q :qa<CR>
nmap <silent> <leader>h :sp<CR>
nmap <silent> <leader>v :vsp<CR>
nmap <silent> <leader>ga :Gwrite<CR>
nmap <silent> <leader>gc :Gcommit<CR>
nmap <silent> <leader>gp :Gpush<CR>
nmap <silent> <leader>gP :Gpull<CR>
nmap <silent> <leader>gs :Gstatus<CR>
nmap <TAB> <C-W>
inoremap jj <ESC>

" Remove arrow keys
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>

" ----- General (non-plugin) settings -----
syntax on
set number
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set hlsearch
set laststatus=2
set mouse=a
set encoding=UTF-8
highlight LineNr ctermfg=grey

" colorscheme flattened_light

" ---- Enable OneDark colorscheme and True Colors for tmux
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set t_Co=256
colorscheme one
if strftime("%H") > 8 && strftime("%H") < 17
  set background=light
else
  set background=dark
endif
