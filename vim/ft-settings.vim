"
" File: ft-settings.vim
" Author: davidm19
" Created: May 27, 2019
"

augroup filetypes
	au!
	au Filetype c
		\ set completeopt-=preview |
		\ setlocal tabstop=8 |
		\ setlocal shiftwidth=8 |
		\ setlocal softtabstop=8 |
		\ setlocal textwidth=80 |
		\ setlocal noexpandtab |
		\ let b:dispatch = 'gcc % -o %:r && ./%:r'
	au Filetype cpp
		\ set completeopt-=preview |
		\ let b:dispatch = 'g\++ % -o %:r && ./%:r'
		" TODO: Google standards
	au Filetype gitcommit 
		\ setlocal
		\ spell
		\ spelllang=en_us
		\ textwidth=72
	au Filetype python
		\ set tabstop=4 |
		\ set softtabstop=4 |
		\ set shiftwidth=4 |
		\ set textwidth=79 |
		\ set expandtab |
		\ set autoindent |
	   	\ let b:dispatch = 'python %'
augroup END
