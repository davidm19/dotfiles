"
" File: init.vim
" Author: davidm19
" Created: ~2018
"

" Section: Vim Plugins

call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Section: Vim Plugin Settings
filetype plugin on
filetype plugin indent on
let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" Section: Keybindings
let mapleader = ";"

nmap <silent> <leader>w :w<CR>
nmap <silent> <leader>h :sp<CR>
nmap <silent> <leader>v :vsp<CR>
nmap <silent> ]b :bnext<CR>
nmap <silent> [b :bprevious<CR>
nmap <C-c> :Buffers<CR>
nmap <C-p> :Files<CR>

nmap <silent> <TAB> <C-w>
nmap = <CR>

inoremap jj <ESC>

" Section: General Settings
syntax on
set number
set backspace=indent,eol,start
set showcmd
set mouse=a
set encoding=UTF-8

set background=light
highlight LineNr ctermfg=grey
set cursorline
highlight CursorLineNr ctermfg=brown
highlight clear CursorLine

" Section: External Files
source $HOME/.dotfiles/vim/ft-settings.vim
