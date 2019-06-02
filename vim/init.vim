call plug#begin('~/.local/share/nvim/plugged')
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-gitgutter'
	Plug 'junegunn/gv.vim'
	Plug 'Raimondi/delimitMate'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'Shougo/deoplete-clangx'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-dispatch'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-vinegar'
	Plug 'vim-airline/vim-airline'
	Plug 'ryanoasis/vim-devicons'
call plug#end()

filetype plugin indent on
let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Remap Leader key to ;
let mapleader = ";"

" vim-vinegar settings
nmap = <CR>

" vim-gitgutter/airline settings
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 " THIS IS WHAT ALLOWS POWERLINE ICONS IN LINUX NEOVIM. IF IT'S CAUSING YOU ANY PROBLEMS DISABLE THIS.

" delimitMate Settings
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" FZF
nmap <C-c> :Buffers<CR>
nmap <C-p> :Files<CR>

" KEYBINDINGS
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
set number relativenumber
set backspace=indent,eol,start
set showcmd
set mouse=a
set encoding=UTF-8
set background=light
highlight LineNr ctermfg=grey

" Get filetype settings
source $HOME/.dotfiles/vim/ft-settings.vim
