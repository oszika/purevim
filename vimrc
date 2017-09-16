let g:groups = []

" Source plugins conf
let conffiles = split(globpath('~/.vim/conf', '*.vim'), '\n')
for conffile in conffiles
	execute 'source '. conffile
endfor

" Load plugins
call plug#begin('~/.vim/plugged')

for group in g:groups
	let plugins = conf#{group}#plugins()

	for plugin in plugins
		Plug plugin
	endfor
endfor

call plug#end()

" Configure plugins
for group in g:groups
	call conf#{group}#configure()
endfor
