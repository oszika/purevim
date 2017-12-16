call add(g:groups, "git")

function! layers#git#plugins() abort
	return ['airblade/vim-gitgutter', 'tpope/vim-fugitive']
endfunction

function! layers#git#configure() abort
	nnoremap <leader>hn :GitGutterNextHunk<CR>
	nnoremap <leader>hp :GitGutterPrevHunk<CR>
	nnoremap <leader>hv :GitGutterPreviewHunk<CR>
	nnoremap <leader>hs :GitGutterStageHunk<CR>
	nnoremap <leader>hu :GitGutterUndoHunk<CR>

	nnoremap <leader>gs :Gstatus<CR>
	nnoremap <leader>gd :Gdiff<CR>

	command! -bang -nargs=* GGrep call fzf#vim#grep('git grep --line-number '.shellescape(<q-args>), 0, <bang>0)
endfunction
