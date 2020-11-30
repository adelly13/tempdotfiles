" --------------------
" Basic editing config
" --------------------
"  esc mappings for exiting insert mode
inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>
let mapleader=','	" leader key!
nnoremap <silent> <leader>s :w<CR> " easy save
noremap <silent> <leader>h :nohlsearch<CR>	" stop search highlighting
set nocompatible
vnoremap <silent> <leader>s :sort<CR>	" easy sorting
nnoremap <silent> <BS> <C-^> " go to previous file
set clipboard=unnamed " use system clipboard
filetype on


" -----------------
" Syntax and indent
" -----------------
set autoindent
set showmatch	" show matching braces when text indicator is over them
set tabstop=2 shiftwidth=2 softtabstop=0 expandtab smarttab
syntax on	" enable syntax highlighting
" reformat file
nnoremap <leader>F ggdG[p


" -----------------------
" Line Numbers and Length
" -----------------------
highlight ColorColumn ctermbg=234
set colorcolumn=80
set fo-=t
set nowrap
set number relativenumber
set nu rnu " hybrid line numbers
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


" ---------
" Languages
" --------
autocmd bufnewfile *.java :-1read ~/.vim/snippets/apcs.java
autocmd bufnewfile *.cpp :-1read ~/.vim/snippets/usaco.cpp
autocmd FileType java nnoremap <silent> <C-e> :cd %:p:h <CR> :! javac %:t<CR> :! java %:t:r<CR>
autocmd FileType python nnoremap <silent> <C-e> :cd %:p:h <CR> :! python3 %:t<CR>
autocmd FileType cpp nnoremap <silent> <C-e> :cd %:p:h <CR> :! crun %:t:r<CR> :! cat %:t:r.out<CR>
autocmd FileType go nnoremap <silent> <C-e> :cd %:p:h <CR> :! go run %:t<CR>
autocmd FileType markdown set spell


" -----
" Pairs
" -----
inoremap <leader>" ""<left>
inoremap <leader>' ''<left>
inoremap <leader>( ()<left>
inoremap <leader>[ []<left>
inoremap <leader>{ {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


" --------------------
" Miscellaneous config
" --------------------
set hidden
set laststatus=2
set noshowmode	" hide default status line
set shortmess+=I	" disable startup message
set updatetime=300 " shorter update time makes it seem faster
set shell=zsh\ -i


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
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'itchyny/lightline.vim' " bottom status line
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-commentary' 
Plug 'tpope/vim-surround'
call plug#end()


" ------------------
" Plugin Preferences
" ------------------
colorscheme nord
" status line color
let g:lightline = {'colorscheme': 'nord'} 
" indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2
nnoremap <silent> <leader>n :NERDTreeToggle<CR>:set nu rnu<CR>
let NERDTreeIgnore = ['node_modules']
let g:livepreview_previewer = 'open -a Preview'
" coc language servers and other extensions
let g:coc_global_extensions = [
	\ 'coc-clangd',
	\ 'coc-emmet',
  \ 'coc-go',
	\ 'coc-html',
  \ 'coc-java',
	\ 'coc-jedi',
	\ 'coc-json',
  \ 'coc-svelte',
	\ 'coc-tailwindcss',
	\ 'coc-tsserver',
	\ 'coc-vetur'
	\ ]
" confirm completion with `<leader>,`
inoremap <expr> <leader>, pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" fzf
nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <leader>r :Rg<CR>
