if exists('b:dhall_ftplugin')
	finish
endif
let b:dhall_ftplugin = 1

setlocal commentstring=--\ %s

set smarttab

au BufNewFile,BufRead *.dhall setl shiftwidth=2
