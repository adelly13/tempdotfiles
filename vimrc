set nocompatible " not compatible with vi

" -----------------
" Syntax and indent
" -----------------
syntax on " enable syntax highlighting
set tabstop=4 " width 4 for tabs
set showmatch " show matching braces when text indicator is over them


" --------------------
" Basic editing config
" --------------------
:imap jj <Esc> " map <Esc> to jj 
colorscheme simple-dark
set shortmess+=I " disable startup message
set nu " number of lines
set incsearch " incremental search (as string is being typed)
" smart case-sensitive search
set ignorecase
set smartcase


" ------
" Splits
" ------
set splitbelow
set splitright
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

