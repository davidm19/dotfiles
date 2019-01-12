" HERE'S THE COLORSCHEME FOR WAL
" colorscheme wal

" Set airline colorscheme to solarized
" let g:airline_theme="solarized"

" ----- gVim: If it's between 8:00AM and 4:00PM, colorscheme is dark (it's also dark after 4PM)
" if has("nvim")
"     set termguicolors
"     colorscheme solarized8_flat
"     let g:airline_theme="solarized"
" endif

if has("gui_running")
    set termguicolors
    set background=dark
    " ---- SOLARIZED ---- "
    " colorscheme solarized8_flat
    " let g:airline_theme="solarized"

    " ---- ONE ---- "
    colorscheme one
    let g:airline_theme="one"

    " ---- GRUVBOX ---- "
    " colorscheme gruvbox
    " let g:airline_theme="gruvbox"
endif

" if has("gui_running")
"     set termguicolors
"     " colorscheme solarized8_flat
"     colorscheme one
"     if strftime("%H") >= 8 && strftime("%H") < 16
"       set background=light
"       " let g:airline_solarized_bg='light'
"     else
"       set background=dark
"       " let g:airline_solarized_bg='dark'
"     endif
" endif

" HEY the default NeoVim colorscheme is also good!
