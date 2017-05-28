call plug#begin('~/.vim/plugged')
Plug 'LucaFilipozzi/vim-sensible'
Plug 'LucaFilipozzi/vim-airline'
Plug 'LucaFilipozzi/vim-cursor'
Plug 'LucaFilipozzi/vim-vividchalk'
Plug 'LucaFilipozzi/vim-commentary'
Plug 'LucaFilipozzi/vim-protobuf'
Plug 'LucaFilipozzi/vim-flavored-markdown'
Plug 'LucaFilipozzi/vim-go'
call plug#end()

set list
set listchars=tab:»­,trail:·,extends:»,precedes:«,nbsp:·
set modeline
set modelines=2
colorscheme vividchalk
syntax on

augroup go " {{{
  autocmd!
  autocmd FileType go set ts=4 sw=4 noet sm si ai sta
augroup END " }}}
augroup java " {{{
  autocmd!
  autocmd FileType java set ts=4 sw=4 et sm si ai sta
<<<<<<< HEAD
augroup END " }}}
augroup markdown " {{{
  autocmd!
  autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END " }}}
augroup proto " {{{
  autocmd!
  autocmd FileType proto set ts=2 sw=2 et sm si ai sta
augroup END " }}}
augroup vimrc " {{{
=======
augroup END

" puppet
augroup puppet
  autocmd!
  autocmd Filetype puppet set sm si ai sta
augroup END

" xslt
augroup xslt
>>>>>>> a404e8027449b616db18e0c17f78f3929c81441e
  autocmd!
  autocmd BufWritePost .vimrc source $MYVIMRC
augroup END " }}}
augroup xml " {{{
  autocmd!
  autocmd FileType xml set ts=4 sw=4 et sm si ai sta
augroup END " }}}
augroup xslt " {{{
  autocmd!
  autocmd FileType xslt set ts=4 sw=4 et sm si ai sta
augroup END " }}}

" vim: set ts=2 sw=2 et fdm=marker:
