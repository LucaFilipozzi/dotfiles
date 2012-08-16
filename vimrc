" vim: set ts=2 sw=2 et fdm=marker:

" {{{ Setting up Vundle - the vim plugin bundler
  let iCanHazVundle=1
  let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
  if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
  endif
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  Bundle 'gmarik/vundle'
  " add your bundles below
  Bundle 'Lokaltog/vim-easymotion'
  Bundle 'Lokaltog/vim-powerline'
  Bundle 'jngeist/vim-multimarkdown'
  Bundle 'vim-scripts/searchfold.vim'
  Bundle 'ddollar/nerdcommenter'
  Bundle 'tpope/vim-vividchalk'
  " add your bundles above
  if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
  endif
" }}}

" {{{ Setting up RestoreCursor capability
  function! RestoreCursor()
    if line("'\"") <= line("$")
      normal! g`"
      return 1
    endif
  endfunction

  augroup RestoreCursor
    autocmd!
    autocmd BufWinEnter * call RestoreCursor()
  augroup END
" }}}

set modeline
set modelines=2
set laststatus=2
set encoding=utf-8

set hlsearch
set incsearch
set ignorecase
set smartcase

colorscheme vividchalk
syntax on

