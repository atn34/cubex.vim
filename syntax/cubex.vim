" Cubex syntax highlighting
" CS4120 Fall 2013

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax keyword cubexCond if else
syntax keyword cubexStmt for in
syntax keyword cubexStmt while
syntax keyword cubexStmt return
syntax keyword cubexKeyword class interface extends super
syntax keyword cubexKeyword fun
syntax match   cubexType "\<[A-Z]\>"
syntax match   cubexType "\<[A-Z][a-zA-Z0-9_]*\>"
syntax keyword cubexConst true false
syntax region  cubexConst start=+"+ end=+"+
syntax match   cubexConst "\<[0-9]+\>"
syntax match   cubexId "\<[a-z][a-zA-Z0-9_]*\>"
syntax match   cubexComment "#.*$"
syntax region  cubexComment start="`" end="'" contains=cubexComment

highlight link cubexCond Conditional
highlight link cubexKeyword Keyword
highlight link cubexStmt Statement
highlight link cubexComment Comment
highlight link cubexConst Constant
highlight link cubexType Type
highlight link cubexId Identifier

let b:current_syntax = "cubex"
