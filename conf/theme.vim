call add(g:groups, "theme")

function! conf#theme#plugins() abort
	return ['vim-airline/vim-airline', 'morhetz/gruvbox']
endfunction

function! conf#theme#configure() abort
	syntax enable
	set t_Co=256

	colorscheme gruvbox
	set background=dark

	let g:airline_powerline_fonts = 1
endfunction
