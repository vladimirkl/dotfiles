let $BUNDLES_VIM = "~/.vim/bundles.vim"
source $BUNDLES_VIM

syntax on
set expandtab
set shiftwidth=2
set softtabstop=2
set number
set t_Co=256
set incsearch
set ignorecase
set smartcase
set hlsearch
set mouse=a
set autoread
set background=dark
set completeopt=longest,menuone
set laststatus=2
set statusline=%<%f\ %y[%{&ff}]%m%r%=%-14.(%l,%c%V%)\ %P
let g:SuperTabLongestEnhanced = 1
let g:ctrlp_open_new_file = 'r'


colorscheme solarized

au bufwritepost .vimrc source $MYVIMRC
au bufwritepost bundles.vim source $BUNDLES_VIM
au BufRead,BufNewFile *tmux.conf set filetype=tmux
au FileType *
  \ if &omnifunc != '' |
  \   call SuperTabChain(&omnifunc, "<c-p>") |
  \   call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
  \ endif

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>b :tabedit $BUNDLES_VIM<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
call togglebg#map("")

