" Plug 'preservim/nerdtree'

let g:NERDTreeWinSize=27

map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-f> :NERDTreeFind<CR>

" augroup nerdtree_bf
"   autocmd!
"   autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" augroup END
 
" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" if you are using vim-plug, you'll also need to add these lines to avoid
" crashes when calling vim-plug functions while the cursor is on the NERDTree
" window:
let g:plug_window = 'noautocmd vertical topleft new'
