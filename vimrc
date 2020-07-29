" -----------------
" Syntax and indent
" -----------------
syntax on " enable syntax highlighting
set hls is " set highlighting on search
set tabstop=2 " width 2 for tabs
set softtabstop=0 noexpandtab
set shiftwidth=2
set showmatch " show matching braces when text indicator is over them


" --------------------
" Basic editing config
" --------------------
let mapleader=',' " leader key!
imap jj <Esc> " map <Esc> to jj 
map <leader>h :nohlsearch<CR> " stop search highlighting
colorscheme simple-dark
set updatetime=300 " shorter updatetime makes it seem more responsive
set hidden
set shortmess+=I " disable startup message
set nu " number of lines
set backspace=indent,eol,start " allow backspacing over everything
set laststatus=2
set noshowmode " hide default status line
set incsearch " incremental search (as string is being typed)
set ignorecase " smart case-sensitive search
set smartcase
set autoindent


" -------
" Folding
" -------
set foldmethod=indent   " fold based on indent
set foldnestmax=10      " deepest fold is 10 levels
set nofoldenable        " dont fold by default
set foldlevel=1         " this is just what i use
nmap <leader>a za				" folding shortcut
nmap <leader>M zM				" fold everything
nmap <leader>R zR				" unfold everything


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
ddfiletype indent on " indents for HTML
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" add vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim' " bottom status line
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-commentary' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'} " toggle with :InstantMarkdownPreview and :InstantMarkdownStop
Plug 'preservim/nerdtree'
call plug#end()


" ------------------
" Plugin Preferences
" ------------------
" vim-commentary
nmap <leader>/ gcc
vmap <leader>/ gcc 
" indent guides
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup = 1
let g:ale_completion_enabled = 1 " ale completion
map <leader>n :NERDTreeToggle<CR>

" coc language servers and other extensions
let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-tsserver',
	\ 'coc-json',
	\ 'coc-vetur',
	\ 'coc-jedi'
	\ ] 

" navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" confirm completion with `<leader>,`
inoremap <expr> <leader>, pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" status line color
let g:lightline = {'colorscheme': 'deus'} 

