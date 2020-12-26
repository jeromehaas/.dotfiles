" REQUIRED FOR VUNDLE
set nocompatible              
filetype off                  

" SET RUNTIME PATH TO INCLUDE VUNDLE AND INITIALIZE 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" MAIN CONFIGS
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
set tabstop=2
set shiftwidth=2
set expandtab

" SWITCH BETWEEN WINDOWS
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" MAPLEADERS
let mapleader=","
map <leader>s :w<cr>
imap <leader>s <esc> :w<cr>
nmap <leader>n :NERDTreeToggle<CR>
map <leader>h :split<CR>
map <leader>v :vsplit<CR>
map <leader>c :close<CR>
map <leader>gs :G<CR>

" KEY BINDINGS FOR EMMET
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','


" DEFINES WHERE FILES SHOULD BE SAVED AFRER INSALLATION
call plug#begin('~/dotfiles/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'sainnhe/edge'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'shougo/deoplete.nvim'
Plug 'kien/ctrlp.vim'
Plug 'sjl/gundo.vim'
Plug 'ap/vim-css-color'
call plug#end()

" THEME SETTINGS
syntax on
colorscheme onedark

