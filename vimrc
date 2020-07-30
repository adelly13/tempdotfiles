" --------------------
" Basic editing config
" --------------------
colorscheme simple-dark
inoremap jj <Esc>	" map <Esc> to jj 
let mapleader=','	" leader key!
noremap <leader>h :nohlsearch<CR>	" stop search highlighting
vnoremap <leader>s :sort<CR>	" easy sorting


" ---------------
" Custom snippets
" ---------------
" usaco template
nnoremap <leader>usaco :-1read ~/.vim/snippets/usaco.cpp<CR>13j


" -----------------
" Syntax and indent
" -----------------
set autoindent
set showmatch	" show matching braces when text indicator is over them
set tabstop=2 shiftwidth=2 softtabstop=0 noexpandtab smarttab 
syntax on	" enable syntax highlighting


" -----------------------
" Line numbers and length
" -----------------------
highlight ColorColumn ctermbg=234
set colorcolumn=80
set fo-=t
set nowrap
set number
set tw=79


" ------
" Splits
" ------
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
set splitbelow
set splitright


" -------
" Folding
" -------
nnoremap <leader>M zM	" fold everything
nnoremap <leader>R zR	" unfold everything
nnoremap <leader>a za	" folding shortcut
set foldlevel=1      	" this is just what i use
set foldmethod=indent	" fold based on indent
set foldnestmax=10   	" deepest fold is 10 levels
set nofoldenable     	" dont fold by default


" ------
" Search
" ------
set hlsearch
set ignorecase	" smart case-sensitive search
set incsearch	" incremental search (as string is being typed)
set smartcase


" --------------------
" Miscellaneous config
" --------------------
set backspace=indent,eol,start	" allow backspacing over everything
set hidden
set laststatus=2
set noshowmode	" hide default status line
set shortmess+=I	" disable startup message
set updatetime=300	" shorter updatetime makes it seem more responsive


" ------- 
" Plugins
" -------
" install and run vim-plug on first run
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ddfiletype indent on " indents for HTML
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" add vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim' " bottom status line
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'tpope/vim-commentary' 
Plug 'w0rp/ale'
call plug#end()


" ------------------
" Plugin Preferences
" ------------------
" status line color
let g:lightline = {'colorscheme': 'deus'} 
" vim-commentary
nnoremap <leader>/ gcc
vnoremap <leader>/ gcc 
" indent guides
let g:ale_completion_enabled = 1 " ale completion
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2
noremap <leader>n :NERDTreeToggle<CR>
" coc language servers and other extensions
let g:coc_global_extensions = [
	\ 'coc-clangd',
	\ 'coc-jedi',
	\ 'coc-json',
	\ 'coc-pairs',
	\ 'coc-snippets',
	\ 'coc-tsserver',
	\ 'coc-vetur'
	\ ] 
" confirm completion with `<leader>,`
inoremap <expr> <leader>, pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" navigate the completion list
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

