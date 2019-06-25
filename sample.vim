if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
call plug#end()

let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nmap <C-c> :CtrlPBuffer<CR>

let mapleader = ";"

nmap <silent> <leader>h :sp<CR>
nmap <silent> <leader>v :vsp<CR>
" nmap <silent> ]b :bnext<CR>
" nmap <silent> [b :bprevious<CR>
nmap <C-c> :Buffers<CR>
nmap <C-p> :Files<CR>

nmap <silent> <TAB> <C-w>
nmap = <CR>

inoremap jj <ESC>

syntax on
set number
set backspace=indent,eol,start
set showcmd
set mouse=a
set encoding=UTF-8
