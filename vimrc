" On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
" across (heterogeneous) systems easier.
set runtimepath+=$HOME/.vim

set nocompatible

execute pathogen#infect()

set encoding=UTF-8
set fileencodings=UTF-8
""""""""""""""""""""""""""""
" Configuration!
"""""""""""""""""""""""""""

"Activate fuzzy search
"Add subfolders to the search path
"set path+=**
"display 
set wildmenu

" Show relative line linenumbers
set relativenumber
set ruler
"Highlight search and incremental search
set hls is

" Enable syntax highlighting
syntax on

" Enable auto indentation custom per file type
filetype plugin indent on

" Set tabs to 4 space chars
set tabstop=4 softtabstop=4 noexpandtab shiftwidth=4 smarttab

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Set backspace behavior in insert mode
set backspace=indent,eol,start

set laststatus=2

"enable highlighting of the current line
"set cursorline

"Theme and Styling 

"" Disable beeps
"set noerrorbells visualbell t_vb=
"autocmd GUIEnter * set visualbell t_vb=

"---------------------
"Plugin configurations
"---------------------
"let g:lightline = {
"      \ 'colorscheme': 'wombat',
"      \ }

"Remove ?help and other stuff
let NERDTreeMinimalUI = 1

"Set the arrows on NERDTree, for some reason the defaults aren't working
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"Quit automatically if nerdtree is the last open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"---------------------
"Mappings
"---------------------
nnoremap <silent> <leader>m :NERDTreeFind<CR>
map <leader>n :NERDTreeToggle<CR>
imap jk <ESC>
imap kj <ESC>
cmap kj <ESC>
cmap jk <ESC>

nnoremap <leader>l :ls<CR>:b<space>

