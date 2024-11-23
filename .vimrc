" CUSTOM OPTIONS
set number! relativenumber!

set cmdheight=2
set ts=4 sw=4

" Enable mouse scrolling in all modes
set mouse=a

" Make vim use global clipboard
set clipboard+=unnamed

" Specify directory for swap files
set swapfile
set dir=~/.vim/tmp

" Show number of matches when using find
set shortmess-=S

" Highlight current line in INSERT mode
:autocmd InsertEnter,InsertLeave * set cul!

" Use different cursor shape for different modes
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
" Cursor settings:
"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" ---------- PLUGINS

" Install plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  " Theme.
  Plug 'tpope/vim-sensible'
  Plug 'junegunn/seoul256.vim'

  " Search.
  Plug 'https://github.com/google/vim-searchindex.git'
call plug#end()

colo seoul256
