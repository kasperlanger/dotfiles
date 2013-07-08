set nocompatible

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on
filetype plugin indent on

set number
set listchars=tab:>-,trail:-
set list

set wildignore=**/chef-cache

set expandtab
set shiftwidth=2
set softtabstop=2

set backspace=2

let mapleader=","
nnoremap <leader>ets :sp ~/Documents/txt/toolsharpening.txt<cr>
nnoremap <leader>evr :sp $MYVIMRC<cr>
nnoremap <leader>t :CommandT<cr>
nnoremap <leader>nt :NERDTree<cr>
nnoremap <leader>rr :w<cr>:! ruby %<cr>

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a" :Tabularize /"\zs<CR>
  vmap <Leader>a" :Tabularize /"\zs<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

autocmd bufwritepost $MYVIMRC :so $MYVIMRC
