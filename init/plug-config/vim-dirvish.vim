" Plug 'justinmk/vim-dirvish'
" Plug 'kristijanhusak/vim-dirvish-git'

let g:dirvish_git_show_ignored = 1

augroup dervish_config
  autocmd!
  autocmd FileType dirvish
        \ nnoremap <silent><buffer> t ddO<Esc>:let @"=substitute(@", '\n', '', 'g')<CR>:r ! find "<C-R>"" -maxdepth 1 -print0 \| xargs -0 ls -Fd<CR>:silent! keeppatterns %s/\/\//\//g<CR>:silent! keeppatterns %s/[^a-zA-Z0-9\/]$//g<CR>:silent! keeppatterns g/^$/d<CR>:noh<CR>
  au FileType dirvish nmap <buffer> <silent> l <CR>
  au FileType dirvish nmap <buffer> <silent> h <Plug>(dirvish_up)
  autocmd BufWritePre,FileWritePre * silent! call mkdir(expand('<afile>:p:h'), 'p')
augroup END
