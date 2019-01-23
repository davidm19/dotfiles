" ----- key remappings -----
nmap <silent> <leader>wq :wq<CR>
nmap <silent> <leader>w :w<CR>
nmap <silent> <leader>W :wa<CR>
nmap <silent> <leader>q :q<CR>
nmap <silent> <leader>Q :qa<CR>
nmap <silent> <leader>x :q!<CR>
nmap <silent> <leader>r :source ~/.vimrc<CR>
if (has("nvim"))
    nmap <silent> <leader>r :source ~/.config/nvim/init.vim<CR>
endif
if (has("gui_running"))
    nmap <silent> <leader>r :source ~/.gvimrc<CR>
endif
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

