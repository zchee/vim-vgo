" Copyright The vim-vgo Authors. All rights reserved.
" Use of this source code is governed by a BSD-style
" license that can be found in the LICENSE file.

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal cindent
setlocal expandtab
setlocal shiftwidth=2

let b:undo_indent = "setl cin<"

" vim: sts=2:sw=2:ts=2:et
