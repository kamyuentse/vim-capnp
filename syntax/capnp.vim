" Vim syntax file
" Language: capnp
" Maintainer: Charles Strahan
" Maintainer: Kam Y. Tse
" Refer https://github.com/capnproto/capnproto/blob/master/highlighting/qtcreator/capnp.xml


if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword capnpKeyword struct enum interface union import using const
syn keyword capnpKeyword annotation extends in of on as with from fixed

" Types
syn match capnpType ":[.a-zA-Z0-9()]\+"

" Strings
syn region capnpString start=/"/ skip=/\\"/ end=/"/

" Comments
syn match capnpComment "#.*$"

" Ordinals
syn match capnpOrdinal "@[a-fA-F0-9]\+"

" File IDs
syn match capnpFileId "@0x[a-fA-F0-9]\+"

" Annotations
syn match capnpAnnotation "$[^;()]\+"

" Braces
syn region capnpFold matchgroup=capnpBraces start="{" end="}" transparent fold

" Highlighting
hi link capnpComment      Comment
hi link capnpKeyword      Keyword
hi link capnpString       String
hi link capnpType         Type
hi link capnpOrdinal      Identifier
hi link capnpFileId       Identifier
hi link capnpAnnotation   Statement

let b:current_syntax = "capnp"
