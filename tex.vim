" Order is important here! Last match wins.

syn match texTextMathShift /\$/
syn match texDispMathShift /\$\$/
syn match texScriptOps     /\^\|_/
syn match texTie           /\~/
syn match texArg           /#[#1-9]/
syn match texArg           /#{/me=e-1
syn match texAlignTab      /&/
" syn match texHyphen        /-/
syn match texEndash        /--/
syn match texEmdash        /---/
syn match texGroup         /{\|}/

" Alternative versions that work with ^^ constructions:
" syn match texTextMathShift /\$\|\^\^d\|\^\^24/
" syn match texDispMathShift /\(\$\|\^\^d\|\^\^24\)\(\$\|\^\^d\|\^\^24\)/
" syn match texScriptOps     /\^\|\^\^5e\|_\|\^\^5f/
" syn match texTie           /~\|\^\^7e\|\^\^>/
" syn match texArg           /#\|\^\^23\|\^\^c/
" syn match texAlignTab      /&\|\^\^26\|\^\^f/
" syn match texHyphen        /-\|\^\^2d\|\^\^m/
" syn match texEndash        /\(-\|\^\^2d\|\^\^m\)\(-\|\^\^2d\|\^\^m\)/
" syn match texEmdash        /\(-\|\^\^2d\|\^\^m\)\(-\|\^\^2d\|\^\^m\)\(-\|\^\^2d\|\^\^m\)/
" syn match texGroup         /{\|\^\^7b\|\^\^;\|}\|\^\^7d\|\^\^=/

" @ is usually catcode 11 (letter) when it appears in command names.
syn match texCommand /\\[a-zA-Z@]\+/
syn match texCommand /\\[^a-zA-Z@]/
syn match texCommand /\\\^\^[0-9a-f]\{2}\|\\\^\^./ contains=texUpUpChar

syn match texUpUpChar /\^\^[0-9a-f]\{2}\|\^\^./

syn match texComment /%.*$/
syn case ignore
syn keyword texTodo contained containedin=texComment todo xxx fixme
syn case match

hi def link texComment Comment
hi def link texTodo Todo
hi def link texUpUpChar SpecialChar
hi def link texCommand Function
hi def link texTextMathShift Delimiter
hi def link texDispMathShift Delimiter
hi def link texScriptOps Operator
hi def link texTie Operator
hi def link texArg Operator
hi def link texAlignTab Operator
hi def link texEnDash Operator
hi def link texEmDash Operator
hi def link texGroup Delimiter 

let b:current_syntax = "tex"
