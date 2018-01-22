scriptencoding utf-8

if exists('b:current_syntax')
    finish
endif

syntax match dhallLambda "λ\|→"
syntax match dhallType "\v[A-Z][a-z]*"
syntax match dhallLabel "\v[a-z]+"
syntax match dhallParens "(\|)\|\[\|\]\|,"
syntax match dhallRecord "{\|}\|:"
syntax keyword dhallKeyword let in
syntax region dhallString start=+"+ end=+"+
syntax match dhallComment '\v--.*$' contains=@Spell
syntax region dhallComment start="{-" end="-}" contains=@Spell

highlight link dhallLambda Special
highlight link dhallString String
highlight link dhallLabel Identifier
highlight link dhallRecord Special
highlight link dhallKeyword Keyword
highlight link dhallType Structure
highlight link dhallParens Special
highlight link dhallComment Comment

let b:current_syntax = 'dhall'
