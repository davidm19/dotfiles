" PLUGINS 
call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary' 
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-fugitive'
call plug#end()

" PLUGIN SETTINGS 
" ----- Remap Leader key to ;
let mapleader = ";"

" ----- Shougo/deoplete.nvim -----
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" ----- tpope/vim-vinegar -----
nmap = <CR>

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
nmap <C-p> :Files<CR>

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
