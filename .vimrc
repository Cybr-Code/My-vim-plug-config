" Automatically run file
nnoremap <F9> :w<CR>:exe '!python3 ' . shellescape(expand('%:p'))<CR>
" Toggle NERDTree
nnoremap <F2> :NERDTree<CR>
" Save a Session Easily
nnoremap <F8> :SSave<CR>
nnoremap <F3> :SClose<CR>
" Tab Movement
nnoremap <C-t> :tabnew<CR>:Startify<CR>
inoremap <C-t> <Esc>:tabnew<CR>:Startify<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-w> :q<CR>
" VIM CONFIG EASY ACCESS
nnoremap  ,v :edit   $MYVIMRC<CR>
nnoremap  ,u :source $MYVIMRC<CR>
" vim-plug plugins
call plug#begin()
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jreybert/vimagit'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-obsession'
Plug 'mhinz/vim-startify'
call plug#end()
" COC.NVIM AUTOFILL CONFIG
let g:coc_node_path = '/home/xyyphr/.config/nvm/versions/node/v23.11.1/bin/node'
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction
" Dracula Color Config
syntax enable
colorscheme dracula
