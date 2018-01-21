if exists('b:current_syntax')
    finish
endif

syntax match dhallType "\v[A-Z][a-z]*"
syntax match dhallLabel "\v[a-z]+"
syntax match dhallParens "(\|)\|\[\|\]\|,"
syntax match dhallRecord "{\|}\|:"
syntax keyword dhallKeyword let in

highlight link dhallLabel Identifier
highlight link dhallRecord Operator
highlight link dhallKeyword Keyword
highlight link dhallType Structure
highlight link dhallParens Special

let b:current_syntax = 'dhall'
