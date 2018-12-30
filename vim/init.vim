set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Raimondi/delimitMate'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-commentary' 
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'joshdick/onedark.vim'
call vundle#end()
filetype plugin indent on

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
 " ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

hi clear SignColumn

let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

let g:airline#extensions#hunks#non_zero_only = 1

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- ctrlpvim/ctrlp.vim settings -----
nmap <C-c> :CtrlPBuffer<CR>

" ----- key remappings -----
nmap <silent> <leader>wq :wq<CR>
nmap <silent> <leader>w :w<CR>
nmap <silent> <leader>W :wa<CR>
nmap <silent> <leader>q :q<CR>
nmap <silent> <leader>Q :qa<CR>
nmap <silent> <leader>ga :Gwrite<CR>
nmap <silent> <leader>gc :Gcommit<CR>
nmap <silent> <leader>gp :Gpush<CR>
nmap <silent> <leader>gP :Gpull<CR>

" ----- General (non-plugin) settings -----
syntax on
set number
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set laststatus=2
set mouse=a

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  else
	colorscheme flattened_dark
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set t_Co=256
colorscheme onedark

" set termguicolors
" set t_Co=256
" let g:solarized_termtrans = 1
" let g:solarized_termcolors=256
" highlight LineNr ctermfg=grey

" set background=dark
" colorscheme flattened_dark
