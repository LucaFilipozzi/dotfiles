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
augroup END " }}}
augroup markdown " {{{
  autocmd!
  autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END " }}}
augroup proto " {{{
  autocmd!
  autocmd FileType proto set ts=2 sw=2 et sm si ai sta
augroup END " }}}
augroup puppet " {{{
  autocmd!
  autocmd Filetype puppet set sm si ai sta
augroup END " }}}
augroup vimrc " {{{
  autocmd!
  autocmd BufWritePost .vimrc,.dotfiles/vimrc source $MYVIMRC
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
