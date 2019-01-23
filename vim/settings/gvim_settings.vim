" ----- Load Plugins on startup because gVim doesn't do it already
autocmd VimEnter * PlugInstall
autocmd VimEnter * q

if has("gui_macvim")
    " ----- Start MacVim in fullscreen
    set fuoptions=maxvert,maxhorz
    au GUIEnter * set fullscreen
endif

" ----- Linux gVim Screen Config
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=b

" HEY! FONTS ARE DIRECTLY IN THE GVIMRC OF THE COMPUTER, NOT HERE!
