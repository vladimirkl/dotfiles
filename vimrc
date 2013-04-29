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
let g:SuperTabLongestEnhanced = 1
let g:Powerline_symbols = 'fancy'

colorscheme solarized

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  autocmd bufwritepost bundles.vim source $BUNDLES_VIM
  autocmd FileType *
    \ if &omnifunc != '' |
    \   call SuperTabChain(&omnifunc, "<c-p>") |
    \   call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
    \ endif
endif

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>b :tabedit $BUNDLES_VIM<CR>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
call togglebg#map("")

