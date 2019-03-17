call add(g:groups, "tools")

function! layers#tools#plugins() abort
	return ['airblade/vim-rooter', 'scrooloose/nerdcommenter', 'kien/ctrlp.vim', 'scrooloose/nerdtree', 'ekalinin/dockerfile.vim' , 'dag/vim-fish']
endfunction

function! layers#tools#configure() abort
endfunction
