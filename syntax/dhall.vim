if exists('b:current_syntax')
    finish
endif

syntax keyword dhallKeyword let in
syntax keyword dhallType Text List Option
syntax match dhallParens "(\|)\|\[\|\]\|,"
syntax match dhallRecord "{\|}\|:"

highlight link dhallRecord Operator
highlight link dhallKeyword Keyword
highlight link dhallType Structure
highlight link dhallParens Special

let b:current_syntax = 'dhall'
