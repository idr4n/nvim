" Plug 'easymotion/vim-easymotion'

" Settings for easymotion, incsearch-easymotion...

map / <Plug>(incsearch-easymotion-/)
map ? <Plug>(incsearch-easymotion-?)
map zl <Plug>(easymotion-bd-wl)
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> <leader>/ incsearch#go(<SID>config_easyfuzzymotion())

" temporary fix to about conflict with Coc linter-diagnostics, according to
" https://github.com/neoclide/coc.nvim/issues/110
let g:easymotion#is_active = 0
function! EasyMotionCoc() abort
  if EasyMotion#is_active()
    let g:easymotion#is_active = 1
    silent! CocDisable
  else
    if g:easymotion#is_active == 1
      let g:easymotion#is_active = 0
      silent! CocEnable
    endif
  endif
endfunction
autocmd TextChanged,CursorMoved * call EasyMotionCoc()

