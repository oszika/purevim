let g:groups = []

" Source plugins conf
let layers = split(globpath('~/.vim/layers', '*.vim'), '\n')
for layer in layers
	execute 'source '. layer
endfor

" Load plugins
call plug#begin('~/.vim/plugged')

for group in g:groups
	let plugins = layers#{group}#plugins()

	for plugin in plugins
		Plug plugin
	endfor
endfor

call plug#end()

" Configure plugins
for group in g:groups
	call layers#{group}#configure()
endfor
