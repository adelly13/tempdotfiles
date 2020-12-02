" ----------------------------------------
" Vim defaults that are unlikely to change
" ----------------------------------------

" ------
" Basics
" ------
filetype on
inoremap jk <Esc> " mappings for exiting insert mode
inoremap kj <Esc>
let mapleader=','	" leader key!
nnoremap <silent> <BS> <C-^> " go to previous file
nnoremap <silent> <leader>s :w<CR> " easy save
noremap <silent> <leader>h :nohlsearch<CR>	" stop search highlighting
set clipboard=unnamed " use system clipboard
vnoremap <silent> <leader>s :sort<CR>	" easy sorting


" ------
" Splits
" ------
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
set splitbelow
set splitright


" ------
" Search
" ------
set hlsearch
set ignorecase	" smart case-sensitive search
set incsearch	" incremental search (as string is being typed)
set smartcase


" -------------
" Miscellaneous
" -------------
set hidden
set laststatus=2
set noshowmode	" hide default status line
set shortmess+=I	" disable startup message
set updatetime=300 " shorter update time makes it seem faster
set shell=zsh\ -i

