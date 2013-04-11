set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'nelstrom/vim-visual-star-search'

syntax on
filetype plugin indent on

set number
set t_Co=256
set incsearch
set ignorecase
set smartcase
set hlsearch
set mouse=a

set background=dark
"let g:solarized_termcolors=256
colorscheme solarized

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
call togglebg#map("")

