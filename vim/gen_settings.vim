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

" ----- If it's between 8:00AM and 5:00PM, let the colorscheme be light
set termguicolors
colorscheme solarized8_flat
if strftime("%H") > 8 && strftime("%H") < 17
  set background=light
else
  set background=dark
endif
