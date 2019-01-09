" colorscheme wal

" Set lightline colorscheme to solarized
let g:lightline = { 'colorscheme': 'solarized' }

" ----- If it's between 8:00AM and 4:00PM, colorscheme is dark (it's also dark after 4PM)
set termguicolors
colorscheme solarized8_flat
set background=dark
" if strftime("%H") >= 8 && strftime("%H") < 16
"   set background=light
" else
"   set background=dark
" endif

" HEY the default NeoVim colorscheme is also good!
