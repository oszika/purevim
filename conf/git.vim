call add(g:groups, "git")

function! conf#git#plugins() abort
	return ['airblade/vim-gitgutter', 'tpope/vim-fugitive']
endfunction

function! conf#git#configure() abort
	nnoremap <leader>hn :GitGutterNextHunk<CR>
	nnoremap <leader>hp :GitGutterPrevHunk<CR>
	nnoremap <leader>hv :GitGutterPreviewHunk<CR>
	nnoremap <leader>hs :GitGutterStageHunk<CR>
	nnoremap <leader>hu :GitGutterUndoHunk<CR>

	nnoremap <leader>gs :Gstatus<CR>
	nnoremap <leader>gd :Gdiff<CR>
endfunction
