set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set t_Co=256
set incsearch
set ignorecase
set smartcase
set hlsearch
set mouse=a

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
