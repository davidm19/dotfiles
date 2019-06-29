"
" File: init.vim
" Author: davidm19
" Created: ~2018
"

" Section: Bootstrapping

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Section: Vim Plugins

call plug#begin('~/.local/share/nvim/plugged')

" Plugins: General
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
Plug 'godlygeek/tabular'

" Plugins: Language Specific
" Python
Plug 'davidhalter/jedi-vim' " Intelligent Python autocompletion
Plug 'Yggdroot/indentLine' " More visible line indentations
call plug#end()

" Section: Vim Plugin Settings

let g:deoplete#sources#go#gocode_binary = '~/go/bin/gocode'

let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:airline#extensions#hunks#non_zero_only = 1

let g:indentLine_enabled = 0

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
" nmap <silent> ]b :bnext<CR>
" nmap <silent> [b :bprevious<CR>
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

highlight LineNr ctermfg=grey
set cursorline

" Light:
" set background=light
" highlight CursorLineNr ctermfg=brown

" Dark:
set background=dark
highlight CursorLineNr ctermfg=yellow

highlight clear CursorLine

runtime macros/matchit.vim

highlight StatusLine ctermbg=white ctermfg=black

" Section: External Files

source $HOME/.dotfiles/vim/ft-settings.vim
