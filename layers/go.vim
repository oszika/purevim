call add(g:groups, 'go')

function! layers#go#plugins() abort
	return ['fatih/vim-go', 'sebdah/vim-delve']
endfunction

function! layers#go#buildDebug(dir, flags) abort
	execute '!cd '.a:dir.' && go build -gcflags="-N -l" '.a:flags
endfunction

function! layers#go#configure() abort
	command! -nargs=* DlvBuild call layers#go#buildDebug(expand('%:p:h'), '')	
	command! -nargs=* DlvBuildAll call layers#go#buildDebug(expand('%:p:h'), '-a')	

	" gocode
	nnoremap <localleader>gd :GoDef <c-r><c-w><cr>
	nnoremap <localleader>ga :GoAlternate<cr>
	nnoremap <localleader>gb :GoBuild<cr>
	nnoremap <localleader>gi :GoInfo<cr>
	nnoremap <localleader>gt :GoTest<cr>

	" delve
	nnoremap <localleader>db :DlvBuild<cr>
	nnoremap <localleader>da :DlvAddBreakpoint<cr>
	nnoremap <localleader>de :execute 'DlvExec '.expand('%:h:p:t').'/'.expand('%:h:p:t')<cr>

	" completion
	inoremap <tab> <c-x><c-o>
	inoremap <c-t> <c-n>
	inoremap <c-s> <c-p>

	" lint
	set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

	" auto goimports
	let g:go_fmt_command = "goimports"

endfunction
