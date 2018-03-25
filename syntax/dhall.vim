scriptencoding utf-8

if exists('b:current_syntax')
    finish
endif

syntax match dhallInterpolation "\v\$\{[^\}]*\}"
syntax keyword dhallTodo TODO FIXME
syntax match dhallBrackets "[<>|]"
syntax match dhallOperator "+\|*"
syntax match dhallOperator "//"
syntax match dhallOperator "/\\"
syntax match dhallOperator "⫽"
syntax match dhallOperator "∧"
syntax match dhallNumber "\v[0-9]"
syntax match dhallNumber "\v\+[0-9]"
syntax match dhallLambda "∀\|λ\|→\|->\|\\"
syntax match dhallType "\v[A-Z][a-z]*"
syntax match dhallLabel "\v[A-Z][a-z]*/[a-z_][A-Za-z0-9]*"
syntax match dhallLabel "\v[a-z_][A-Za-z0-9]*"
syntax match dhallParens "(\|)\|\[\|\]\|,"
syntax match dhallRecord "{\|}\|:"
syntax keyword dhallKeyword let in forall constructors if then else
syntax match dhallEsc +\\"+
syntax region dhallString start=+"+ end=+"+ contains=dhallInterpolation,dhallEsc
syntax match dhallComment '\v--.*$' contains=@Spell,dhallTodo
syntax region dhallMultilineComment start="{-" end="-}" contains=@Spell,dhallTodo,dhallMultilineComment
syntax match dhallUrl "https://[a-zA-Z0-9/.-]*"
syntax keyword dhallBool True False

highlight link dhallEsc Special
highlight link dhallInterpolation Special
highlight link dhallTodo Todo
highlight link dhallBrackets Operator
highlight link dhallBool Underlined
highlight link dhallUrl String
highlight link dhallOperator Operator
highlight link dhallNumber Number
highlight link dhallLambda Special
highlight link dhallString String
highlight link dhallLabel Identifier
highlight link dhallRecord Special
highlight link dhallKeyword Keyword
highlight link dhallType Structure
highlight link dhallParens Special
highlight link dhallComment Comment
highlight link dhallMultilineComment Comment

let b:current_syntax = 'dhall'
