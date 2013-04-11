let $BUNDLES_VIM = "~/.vim/bundles.vim"
source $BUNDLES_VIM

syntax on
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
  autocmd bufwritepost bundles.vim source $BUNDLES_VIM
endif

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>b :tabedit $BUNDLES_VIM<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
call togglebg#map("")

