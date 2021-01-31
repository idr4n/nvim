"===================== Vim-Plug Settings  ======================= 
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

"" Search
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-rooter'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
" Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
" Plug 'preservim/nerdtree', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] }
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'

"" Setups
" Plug 'vim-scripts/scrollfix'
Plug 'svermeulen/vim-easyclip'
Plug 'mhinz/vim-startify'
Plug 'moll/vim-bbye'
Plug 'ryanoasis/vim-devicons'
Plug 'aymericbeaumet/vim-symlink'
Plug 'honza/vim-snippets'
Plug 'metakirby5/codi.vim'

"" Formatting
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'preservim/nerdcommenter'
" Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'

"" Actions, mappings
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'

"" Git
Plug 'tpope/vim-fugitive'
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

"" Autocompletion, LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yuezk/vim-js'
" Plug 'lifepillar/vim-mucomplete'
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }

"" Appearance, syntax highlighting
Plug 'junegunn/goyo.vim'
Plug 'sheerun/vim-polyglot'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'jceb/vim-orgmode'
Plug 'machakann/vim-highlightedyank'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

"" Themes
Plug 'chriskempson/base16-vim'
Plug 'gruvbox-community/gruvbox'
" Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'pbrisbin/vim-colors-off'


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
"===================== END Vim-Plug Settings  ======================= 

