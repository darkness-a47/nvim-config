"plugin ---------------------------------
call plug#begin('~/.vim/plugged')
	Plug 'dense-analysis/ale'
	Plug 'joshdick/onedark.vim'
	Plug 'preservim/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()
"end plugin ------------------------------
 
"setting ---------------------------------
colorscheme onedark
set number
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
"set cursorline
"set cursorcolumn
set tabstop=4
set nobackup
set nowrap
set incsearch
set ignorecase
set showcmd
set showmode
set hlsearch
set history=500
set wildmenu
set wildmode=list:longest
set belloff=all
set omnifunc=ale#completion#OmniFunc
"end setting -----------------------------

"shortcuts -------------------------------
let mapleader = ","

noremap <leader>\ ``
noremap <leader>h <C-W>h
noremap <leader>j <C-W>j
noremap <leader>k <C-W>k
noremap <leader>l <C-W>l
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>q :NERDTreeToggle<CR>
nnoremap <leader>\ :nohlsearch<CR>
nnoremap <leader>r <C-r>
"nnoremap <leader>g :ALEGoToDefinition<CR> 
nnoremap <leader><space> <C-x><C-o>
nnoremap <leader>s :w<CR>


nnoremap n nzz
nnoremap N Nzz

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
"end shortcuts ---------------------------

"autocmd ---------------------------------
autocmd StdinReadPre * let s:std_in=1 "nerdtree start with no file and next line
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif "close nerdtree solo
"end autocmd ----------------------------

"Plugin Setting -------------------------
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='lucius'
let g:airline_powerline_fonts = 1

let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1


"end plugin setting ---------------------




