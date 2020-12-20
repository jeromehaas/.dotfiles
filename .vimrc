set nocompatible
set autoindent
set expandtab
set hidden
set encoding=utf-8
set hlsearch
set history=1000
set number
set scrolloff=7
set wildmenu
set foldcolumn=1
set undofile
set undodir=~/.vim/
set undolevels=1000

let mapleader=","
map <leader>s :w<cr>
imap <leaser>s <esc> :w<cr>

" Plugins will be downloaded under the specified directory.
call plug#begin('~/dotfiles/settings/vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'sainnhe/edge'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
