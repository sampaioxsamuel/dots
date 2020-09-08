filetype plugin on
syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set ai
set nu
set smartindent
set smartcase
set nowrap
set noswapfile
set undodir=~/.vim/undodir
set undofile
set t_Co=256
set incsearch

call plug#begin('~/.vim/plugged')

Plug 'rakr/vim-one'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'

call plug#end()

"Colors
let g:one_allow_italics = 1
set background=dark
colorscheme one

set showtabline=2
set termguicolors
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"

"NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-\> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"NerdCommenter
map <Leader>c <plug>NERDCommenterToggle

"Binds
set clipboard=unnamedplus
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP
map <C-l> :tabNext<CR>
