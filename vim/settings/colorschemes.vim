" HERE'S THE COLORSCHEME FOR WAL
" colorscheme wal

" set termguicolors
" set background=dark
"  ---- SOLARIZED ---- "
" colorscheme solarized8_flat
" let g:airline_theme="solarized"

" ---- ONE ---- "
" colorscheme one
" let g:airline_theme="one"

" ---- GRUVBOX ---- "
" colorscheme gruvbox
" let g:airline_theme="gruvbox"

set termguicolors
colorscheme solarized8_flat
if strftime("%H") >= 8 && strftime("%H") < 16
  set background=light
  let g:airline_solarized_bg='light'
else
  set background=dark
  let g:airline_solarized_bg='dark'
endif
