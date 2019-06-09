augroup filetypes
	au!
	au Filetype gitcommit 
		\ setlocal 
		\ spell 
		\ spelllang=en_us 
		\ textwidth=72

	au Filetype python
	   	\ let b:dispatch = 'python %'
	au Filetype c,cpp
		\ set completeopt-=preview
augroup END

" here's how you'd set up dispatch for gcc/g++....
" g++ % -o %:r && ./%:r
