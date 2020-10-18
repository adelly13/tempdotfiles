" --------------------
" Basic editing config
" --------------------
"  esc mappings for exiting insert mode
inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>
let mapleader=','	" leader key!
nnoremap <leader>s :w<CR> " easy save
noremap <leader>h :nohlsearch<CR>	" stop search highlighting
set nocompatible
vnoremap <leader>s :sort<CR>	" easy sorting
nnoremap <BS> <C-^> " go to previous file
set clipboard=unnamed " use system clipboard


" -----------------
" Syntax and indent
" -----------------
set autoindent
set showmatch	" show matching braces when text indicator is over them
set tabstop=2 shiftwidth=2 softtabstop=0 expandtab smarttab
syntax on	" enable syntax highlighting


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
nnoremap <leader>apcs :-1read ~/.vim/snippets/apcs.java<CR>8jo
nnoremap <leader>jc :cd %:p:h <CR> :! javac %:t<CR> :! java %:t:r<CR>
nnoremap <leader>usaco :-1read ~/.vim/snippets/usaco.cpp<CR>13j


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
Plug 'ihsanturk/neuron.vim'
Plug 'itchyny/lightline.vim' " bottom status line
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'tpope/vim-commentary' 
Plug 'tpope/vim-surround'
call plug#end()


" ------------------
" Plugin Preferences
" ------------------
colorscheme onehalfdark
" autocompletion menu background
highlight Pmenu ctermbg=239 ctermfg=251
" status line color
let g:lightline = {'colorscheme': 'onehalfdark'} 
" indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2
nnoremap <leader>n :NERDTreeToggle<CR>
let g:livepreview_previewer = 'open -a Preview'
" coc language servers and other extensions
let g:coc_global_extensions = [
	\ 'coc-clangd',
	\ 'coc-emmet',
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
" navigate the completion list
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
let g:instant_markdown_autostart = 0
" neuron
nnoremap <leader>zw :e ~/zettelkasten/index.md<CR> 
nmap <leader>zn gzn
nmap <leader>zu gzu
nmap <leader>zl gzl
nmap <leader>zz gzz
nmap <leader>zi gzi
nmap <leader>zo gzo
