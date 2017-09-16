call add(g:groups, "project")

function! layers#project#plugins() abort
	return ['airblade/vim-rooter']
endfunction

function! layers#project#configure() abort
	nnoremap <leader>pf :Files<cr>
endfunction
