" Plug 'sainnhe/gruvbox-material'

"" For dark version.
set background=dark

"" For light version.
" set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'

let g:gruvbox_material_visual = 'reverse'
let g:gruvbox_material_sign_column_background = 'none'
let g:gruvbox_material_statusline_style = 'original'
" let g:gruvbox_material_better_performance = 1

augroup on_change_colorschema
  autocmd!
  autocmd ColorScheme * highlight LineNr guifg=#5c5249
  autocmd BufEnter,WinEnter * highlight FoldColumn guifg=#1D2021
  " autocmd BufEnter,WinEnter * highlight ColorColumn guibg=#873936
augroup END

colorscheme gruvbox-material

