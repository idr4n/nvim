" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_enable_bw = 1

nnoremap <silent> <expr> ,r (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":RnvimrToggle<CR>"
" nnoremap <silent> ,r :RnvimrToggle<CR>
tnoremap <silent> ,r <C-\><C-n>:RnvimrToggle<CR>

let g:rnvimr_layout = { 'relative': 'editor',
    \ 'width': float2nr(round(0.8 * &columns)),
    \ 'height': float2nr(round(0.8 * &lines)),
    \ 'col': float2nr(round(0.1 * &columns)),
    \ 'row': float2nr(round(0.1 * &lines)),
    \ 'style': 'minimal' }
