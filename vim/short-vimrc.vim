" PLUGINS
call plug#begin('~/.local.share/nvim/plugged')
Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary' 
call plug#end()

" KEYBINDINGS
let mapleader = ";"
nmap <silent> <leader>h :sp<CR>
nmap <silent> <leader>v :vsp<CR>
inoremap jj <ESC>

" SETTINGS
syntax on
set number
set backspace=indent,eol,start
set showcmd
set mouse=a
set encoding=UTF-8
set softtabstop=4
set shiftwidth=4
set expandtab
set background=light
highlight LineNr ctermfg=grey
