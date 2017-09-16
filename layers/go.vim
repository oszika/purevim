call add(g:groups, 'go')

function! layers#go#plugins() abort
	return ['fatih/vim-go']
endfunction

function! layers#go#configure() abort
	nnoremap <localleader>d :GoDef <c-r><c-w><cr>
	nnoremap <localleader>a :GoAlternate<cr>
	nnoremap <localleader>b :GoBuild<cr>
endfunction
