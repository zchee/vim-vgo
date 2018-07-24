" Copyright The vim-vgo Authors. All rights reserved.
" Use of this source code is governed by a BSD-style
" license that can be found in the LICENSE file.

" vim-vgo: Vim syntax file for golang.org/x/vgo go.mod and go.sum.

if exists("b:current_syntax")
  finish
endif

syn case match

syn keyword vgoTodo             contained TODO FIXME XXX BUG
syn cluster vgoCommentGroup     contains=vgoTodo

syn keyword vgoModule           module
syn keyword vgoRequire          require
syn keyword vgoExclude          exclude
syn keyword vgoReplace          replace

syn region  vgoComment          start="\/\*" end="\*\/" contains=@vgoCommentGroup
syn region  vgoComment          start="//" skip="\\$" end="$" keepend contains=@vgoCommentGroup
syn region  vgoString           start=/"/ skip=/\\./ end=/"/
syn region  vgoString           start=/'/ skip=/\\./ end=/'/
syn region  vgoVersion          start=/v/ skip=/\\./ end="$"
" TODO(zchee): '=>' on vgoVersion
" syn region  vgoVersionAllow     start=/=/ skip="\\$" end="/>/" contains=@vgoVersion

hi def link vgoTodo             Todo
hi def link vgoComment          Comment
hi def link vgoModule           Statement
hi def link vgoVersion          Type
hi def link vgoVersionAllow     String
hi def link vgoRequire          Include
hi def link vgoExclude          Repeat
hi def link vgoReplace          Keyword
hi def link vgoString           String

let b:current_syntax = "vgo"

" vim: sts=2:sw=2:ts=2:et
