call add(g:groups, "mappings")

function! layers#mappings#plugins() abort
	return ['junegunn/fzf', 'junegunn/fzf.vim', 'easymotion/vim-easymotion']
endfunction

function! layers#mappings#configure() abort
	" Vim edition
	nnoremap <leader>ve :e $MYVIMRC<cr>
	nnoremap <leader>vs :source $MYVIMRC<cr>

	" Window navigation
	nnoremap <silent> <tab> :wincmd w<cr>

	" Fzf mapping
	nnoremap <leader>w :Windows<cr>
	nnoremap <leader>b :Buffers<cr>
	nnoremap <leader>g :GFiles<cr>
	nnoremap <leader>f :Files<cr>

	"vnoremap <LeftRelease> "*ygv

	" EasyMotion
	map <leader>j <Plug>(easymotion-bd-f)
endfunction
