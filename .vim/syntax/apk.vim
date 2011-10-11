" Vim syntax file
" Language:     Applique
" Maintainer:   Tristan Swadell <tristan@tribalcrossing.com>
" Last Change:  2011 May 25
" Please check :help apk.vim for comments on some of the options available.

" Quit when a syntax file was already loaded
if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'apk'
endif

" Keyword definitions
syn keyword apkCommentTodo  TODO FIXME                          contained
syn keyword apkImport       import
syn keyword apkTypeDef      datatype interface
syn keyword apkTypeAttr     is extends
syn keyword apkMember       var const                           contained
syn keyword apkPrimitive    string int float boolean object     contained
syn keyword apkBoolean      true false                          
syn keyword apkVerb         get put post delete                 contained

" Match definitions
syn match  apkNumber         "\d\+|0[xX][0-9a-fA-F]\+"
syn match  apkAnnotation     "@[a-zA-Z][a-zA-Z]*"
syn match  apkOperator       "="

" Region definitions
syn region apkComment        start="/\*" end="\*/"              contains=apkCommentTodo
syn region apkStringQuote    start=+'+  skip=+\\'+ end=+'\|$+   
syn region apkStringDouble   start=+"+  skip=+\\"+ end=+"\|$+   
syn region apkBlock          start="{"  end="}"                 contains=apkMember,apkPrimitive,apkAnnotation,apkVerb,apkArgs
syn region apkArgs           start="("  end=")"                 contains=apkBoolean,apkNumber,apkStringQuote,apkStringDouble,apkPrimitive,apkOperator


syn sync fromstart
syn sync maxlines=100


if version >= 508
    command -nargs=+ HiLink hi def link <args>

    HiLink apkComment           Comment
    HiLink apkCommentTodo       Todo

    HiLink apkStringQuote       String
    HiLink apkStringDouble      String
    HiLink apkNumber            Number
    HiLink apkBoolean           Boolean
    HiLink apkOperator          Operator

    HiLink apkImport            PreProc
    HiLink apkTypeDef           Typedef
    HiLink apkTypeAttr          Keyword
    HiLink apkMember            Identifier
    HiLink apkPrimitive         Type
    HiLink apkVerb              Label

    HiLink apkAnnotation        PreProc

    delcommand HiLink
endif

let b:current_syntax = "apk"
if main_syntax == 'apk'
  unlet main_syntax
endif
