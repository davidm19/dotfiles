function! s:PluginInstall()
  silent cd ~/.vim/bundle
  silent !echo
  \ https://github.com/ctrlpvim/ctrlp.vim
  \ https://github.com/Raimondi/delimitMate
  \ https://github.com/tpope/vim-commentary
  \ https://github.com/tpope/vim-flagship
  \ https://github.com/tpope/vim-fugitive
  \ | xargs -n1 git clone
  silent cd ~
endfunction

command! PluginInstall call s:PluginInstall()

if empty(glob('~/.vim/autoload/pathogen.vim'))
  silent !mkdir -p ~/.vim/autoload ~/.vim/bundle
  silent !curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  call s:PluginInstall()
endif

syntax on
filetype plugin indent on
