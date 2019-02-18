" vim: et sw=2 sts=2

" Plugin:      https://github.com/mhinz/vim-sayonara
" Description: Sane window/buffer deletion.
" Maintainer:  Marco Hinz <http://github.com/mhinz>

if exists('g:loaded_sayoara') || &compatible
  finish
endif
let g:loaded_sayoara = 1

let s:save_cpo = &cpoptions
set cpoptions&vim

command! -nargs=0 -complete=buffer -bang -bar Sayonara call sayonara#Sayonara(<bang>0)

let &cpoptions = s:save_cpo
