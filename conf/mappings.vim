call add(g:groups, "mappings")

function! conf#mappings#plugins() abort
	return []
endfunction

function! conf#mappings#configure() abort
	" Vim edition
	nnoremap <leader>ve :e $MYVIMRC<cr>
	nnoremap <leader>vs :source $MYVIMRC<cr>

	" Window navigation
	nnoremap <silent> <tab> :wincmd w<cr>
endfunction
