filetype plugin indent on
execute pathogen#infect('~/.config/nvim/bundle/{}')
let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Remap Leader key to ;
let mapleader = ";"

" vim-vinegar settings
nmap = <CR>

" vim-gitgutter settings
let g:airline#extensions#hunks#non_zero_only = 1

" delimitMate Settings
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" CtrlP Settings
nmap <C-c> :CtrlPBuffer<CR>

" KEYBINDINGS
let mapleader = ";"
nmap <silent> <leader>wq :wq<CR>
nmap <silent> <leader>w :w<CR>
nmap <silent> <leader>W :wa<CR>
nmap <silent> <leader>q :q<CR>
nmap <silent> <leader>Q :qa<CR>
nmap <silent> <leader>h :sp<CR>
nmap <silent> <leader>v :vsp<CR>
nmap <TAB> <C-w>
inoremap jj <ESC>

" SETTINGS
syntax on
set number
set backspace=indent,eol,start
set showcmd
set mouse=a
set encoding=UTF-8
set background=light
highlight LineNr ctermfg=grey
