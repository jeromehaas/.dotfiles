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
set splitbelow splitright

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

let mapleader=","
map <leader>s :w<cr>
imap <leader>s <esc> :w<cr>
nmap <leader>n :NERDTreeToggle<CR>
map <leader>h :split<CR>
map <leader>v :vsplit<CR>
map <leader>c :close<CR>
map <leader>gs :G<CR>

" Plugins will be downloaded under the specified directory.
"call plug#begin('~/dotfiles/settings/vim/plugged')
call plug#begin('~/dotfiles/.vim/plugged')
"
" Declare the list of plugins.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'sainnhe/edge'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

syntax on
colorscheme onedark

