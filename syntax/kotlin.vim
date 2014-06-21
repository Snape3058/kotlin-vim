" Vim syntax file
" Language: Kotlin
" Maintainer: Alexander Udalov
" Latest Revision: 13 June 2014

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "kotlin"

syn keyword ktStatement break continue return
syn keyword ktConditional if else when
syn keyword ktRepeat do for while
syn keyword ktOperator as in is by
syn keyword ktKeyword get set out super this This where
syn keyword ktException try catch finally throw

syn keyword ktInclude import package

syn keyword ktType Any Boolean Byte Char Double Float Int Long Nothing Short Unit
syn keyword ktModifier annotation data enum inner internal private protected public abstract final open override vararg
syn keyword ktStructure class fun object trait val var
syn keyword ktTypedef type

syn keyword ktBoolean true false
syn keyword ktConstant null

syn keyword ktTodo contained TODO FIXME XXX
syn match ktLineComment "//.*$" contains=ktTodo,@Spell
syn region ktComment start="/\*"  end="\*/" contains=ktComment,ktTodo,@Spell

syn region ktString start='"' skip='\\"' end='"' contains=ktSimpleInterpolation,ktComplexInterpolation
syn region ktString start='"""' end='"""' contains=ktSimpleInterpolation,ktComplexInterpolation
syn match ktCharacter "'.'"

syn match ktSimpleInterpolation "\v\$[a-zA-Z_][a-zA-Z_0-9]*" contained
" TODO: highlight "${" and "}"
syn region ktComplexInterpolation start="\v\$\{" end="\}" contains=ALLBUT,ktSimpleInterpolation

syn match ktNumber "\v<[0-9]+[LFf]?"
syn match ktNumber "\v<0[Xx][0-9A-Fa-f]+L?"
syn match ktNumber "\v<0[Bb][0-9]+L?"
syn match ktFloat "\v<[0-9]*([0-9][eE][-+]?[0-9]+|\.[0-9]+([eE][-+]?[0-9]+)?)[Ff]?"

syn match ktEscapedName "\v`.*`"

syn match ktExclExcl "!!"
syn match ktArrow "->"



hi link ktStatement Statement
hi link ktConditional Conditional
hi link ktRepeat Repeat
hi link ktOperator Operator
hi link ktKeyword Keyword
hi link ktException Exception

hi link ktInclude Include

hi link ktType Type
hi link ktModifier StorageClass
hi link ktStructure Structure
hi link ktTypedef Typedef

hi link ktBoolean Boolean
hi link ktConstant Constant

hi link ktTodo Todo
hi link ktLineComment Comment
hi link ktComment Comment

hi link ktString String
hi link ktCharacter Character

hi link ktSimpleInterpolation Identifier

hi link ktNumber Number
hi link ktFloat Float

hi link ktExclExcl Special
hi link ktArrow Structure
