call add(g:groups, "vue")

function! layers#vue#plugins() abort
	return ['posva/vim-vue', 'othree/javascript-libraries-syntax.vim']
endfunction

function! layers#vue#configure() abort
	autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
endfunction
