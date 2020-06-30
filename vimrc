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
map <C-o> :NERDTreeToggle<CR> " set nerdtree toggle
colorscheme simple-dark
set shortmess+=I " disable startup message
set nu " number of lines
set backspace=indent,eol,start " allow backspacing over everything
set laststatus=2
set noshowmode " hide default status line
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

" ------- 
" Plugins
" -------
" install and run vim-plug on first run
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" add vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
call plug#end()

" status line color
let g:lightline = {
      \ 'colorscheme': 'deus'
      \ }

