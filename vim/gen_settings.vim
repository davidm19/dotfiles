" ----- General settings -----
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
set tabstop=4
set shiftwidth=4
set expandtab
highlight LineNr ctermfg=grey

" colorscheme wal
" ----- If it's between 8:00AM and 4:00PM, let the colorscheme be light
set termguicolors
colorscheme solarized8_flat
if strftime("%H") > 8 && strftime("%H") < 16
  set background=light
else
  set background=dark
endif
" HEY the default NeoVim colorscheme is also good!
