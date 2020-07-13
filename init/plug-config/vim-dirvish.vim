" Plug 'justinmk/vim-dirvish'

augroup dirvish_mappings
  autocmd!
  au FileType dirvish nmap <buffer> <silent> l <CR>
  au FileType dirvish nmap <buffer> <silent> h <Plug>(dirvish_up)
augroup END
