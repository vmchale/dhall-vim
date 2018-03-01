if exists('b:dhall_ftplugin')
	finish
endif
let b:dhall_ftplugin = 1

setlocal commentstring=--\ %s

set smarttab
au BufNewFile,BufRead *.dhall
\ setl shiftwidth=2

if exists('g:dhall_use_ctags')
    if g:dhall_use_ctags == 1
        augroup dhall
            autocmd BufWritePost *.dhall silent !ctags -R .
        augroup END
    endif
endif
