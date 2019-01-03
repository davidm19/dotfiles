source $HOME/.dotfiles/vim/plugins.vim

" ----- key remappings -----
nmap <silent> <leader>wq :wq<CR>
nmap <silent> <leader>w :w<CR>
nmap <silent> <leader>W :wa<CR>
nmap <silent> <leader>q :q<CR>
nmap <silent> <leader>Q :qa<CR>
nmap <silent> <leader>h :sp<CR>
nmap <silent> <leader>v :vsp<CR>
nmap <silent> <leader>ga :Gwrite<CR>
nmap <silent> <leader>gc :Gcommit<CR>
nmap <silent> <leader>gp :Gpush<CR>
nmap <silent> <leader>gP :Gpull<CR>
nmap <silent> <leader>gs :Gstatus<CR>
nmap <TAB> <C-W>
inoremap jj <ESC>

" Remove arrow keys
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>

" ----- General (non-plugin) settings -----
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
highlight LineNr ctermfg=grey

" colorscheme flattened_light

" ----- Enable OneDark colorscheme and True Colors for tmux
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" ----- If it's between 8:00AM and 5:00PM, let the colorscheme be light
set t_Co=256
if strftime("%H") > 8 && strftime("%H") < 17
  colorscheme flattened_light
else
  colorscheme flattened_dark
endif
