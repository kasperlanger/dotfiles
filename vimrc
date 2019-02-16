set nocompatible

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
filetype plugin indent on

set number
set listchars=tab:>-,trail:-
set list

set wildignore=**/chef-cache,node_modules,bower_components,*/target/*

set expandtab
set shiftwidth=2
set softtabstop=2

set backspace=2

let mapleader=","
noremap <c-s> :w<CR>
vnoremap <c-s> <esc>:w<CR>
inoremap <c-s> <esc>:w<CR>
noremap <c-q> :w<CR>ZZ
vnoremap <c-q> <esc>:w<CR>ZZ
inoremap <c-q> <esc>:w<CR>ZZ
nnoremap <leader>ets :sp ~/Documents/txt/toolsharpening.txt<cr>
nnoremap <leader>evr :sp $MYVIMRC<cr>
nnoremap <leader>nt :NERDTree<cr>
nnoremap <leader>rr :w<cr>:! ruby %<cr>

"omni-complete on tab
set completeopt=longest,menuone
function! SmartTab()
  let line = getline('.')
  let substr = strpart(line, -1, col('.')+1)
  let substr = matchstr(substr, "[^ \t]*$")
  if (strlen(substr)==0)
    return "\<tab>"
  else
    return "\<c-x>\<c-o>"
  endif
endfunction

inoremap <tab> <c-r>=SmartTab()<cr>

"Git fugetive shortcuts
nnoremap <leader>gst :Gstatus<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gr :Ggrep 
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gp :!git push<cr>
nnoremap <leader>gup :!git pull --rebase<cr>
nnoremap <leader>gt :silent !tig<cr>
nnoremap <leader>gca :silent !git commit -v -a<cr>

"clojure
nnoremap <leader>r :Req<cr>

"ctrlp
let g:ctrlp_root_markers = ['project.clj', 'gemfile']

"MiniBufferExplorer
nnoremap <leader>mbo :MBEOpen<cr>
nnoremap <leader>mbc :MBEClose<cr>

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a" :Tabularize /"\zs<CR>
  vmap <Leader>a" :Tabularize /"\zs<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

autocmd bufwritepost $MYVIMRC :so $MYVIMRC

"Styling
hi CursorLine term=bold cterm=bold guibg=Grey40

"html5 tags

if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

"paredit.vim
let g:paredit_electric_return = 0
