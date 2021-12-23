" Vim syntax file
" Language: naz
" Maintainer: sporeball
" Latest Revision: 23 December 2021

if exists("b:current_syntax")
  finish
endif

syntax case match

syn match nazOpcode0 /0x/
syn match nazOpcode1 /1x/
syn match nazOpcode2 /2x/
syn match nazOpcode3 /3x/

syn match nazComment /#.*$/

syn match nazAdd /[0-9]a/
syn match nazSubtract /[0-9]s/
syn match nazMultiply /[0-9]m/
syn match nazDivide /[1-9]d/
syn match nazModulo /[1-9]p/

syn match nazHalt /[0-9]h/
syn match nazNegate /[0-9]n/
syn match nazOutput /[0-9]o/
syn match nazRead /[0-9]r/

syn match nazFunction /[0-9]f/
syn match nazVariable /[0-9]v/
syn match nazCondition /[0-9][egl]/

let b:current_syntax = "naz"

hi def link nazOpcode0 Keyword
hi def link nazOpcode1 Keyword
hi def link nazOpcode2 Keyword
hi def link nazOpcode3 Keyword

hi def link nazComment Comment

" arithmetic instructions are uncolored

hi def link nazHalt Special
hi def link nazNegate Identifier
hi def link nazOutput PreProc
hi def link nazRead PreProc

hi def link nazFunction Function
hi def link nazVariable Type
hi def link nazCondition Conditional

" maybe a few of these aren't quite right, but at least they're differentiable
