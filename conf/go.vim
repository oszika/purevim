call add(g:groups, 'go')

function! conf#go#plugins() abort
	return ['fatih/vim-go']
endfunction

function! conf#go#configure() abort
	nnoremap <localleader>d :GoDef <C-R><C-W><CR>
	nnoremap <localleader>a :GoAlternate<CR>
endfunction
