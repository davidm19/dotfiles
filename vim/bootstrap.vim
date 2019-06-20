if empty(glob('~/.vim/autoload/pathogen.vim'))
  silent !mkdir -p ~/.vim/autoload ~/.vim/bundle
  silent !curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
endif

syntax on
filetype plugin indent on
