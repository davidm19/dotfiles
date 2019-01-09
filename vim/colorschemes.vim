" HERE'S THE COLORSCHEME FOR WAL
" colorscheme wal

" Set airline colorscheme to solarized
let g:airline_theme="solarized"

" ----- If it's between 8:00AM and 4:00PM, colorscheme is dark (it's also dark after 4PM)
set termguicolors
colorscheme solarized8_flat
if strftime("%H") >= 8 && strftime("%H") < 16
  set background=light
  let g:airline_solarized_bg='light'
else
  set background=dark
  let g:airline_solarized_bg='dark'
endif

" HEY the default NeoVim colorscheme is also good!
