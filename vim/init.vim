" ----- PLUGINS ----- 
call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
" Plug 'ervandew/supertab'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary' 
Plug 'w0rp/ale'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
" Plug 'lifepillar/vim-solarized8'
" Plug 'rakr/vim-one'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ----- PLUGIN SETTINGS ----- 
" ----- Remap Leader key to ;
let mapleader = ";"

" ----- tpope/vim-vinegar -----
nmap = <CR>

" ----- Shougo/deoplete.nvim -----
let g:deoplete#enable_at_startup = 1

" ----- w0rp/ale -----
let g:ale_sign_error = '✘'
let g:ale_sign_warning = "▲"

" ----- airblade/vim-gitgutter -----
let g:airline#extensions#hunks#non_zero_only = 1

" ----- Raimondi/delimitMate -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- junegunn/fzf.vim -----
nmap <C-c> :Buffers<CR>
nmap <C-x> :Files<CR>

" ----- Yggdroot/indentLine -----
let g:indentLine_char = "|"

" KEYBINDINGS
nmap <silent> <leader>w :w<CR>
nmap <silent> <leader>W :wa<CR>
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
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set laststatus=0
set background=light
highlight LineNr ctermfg=grey

" COLORSCHEMES
" set termguicolors
" colorscheme one
" let g:airline_theme="one"
" colorscheme solarized8_flat
" if strftime("%H") >= 8 && strftime("%H") < 16
"   set background=light
"   let g:airline_solarized_bg='light'
" else
"   set background=dark
"   let g:airline_solarized_bg='dark'
" endif
