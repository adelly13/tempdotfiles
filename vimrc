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
Plug 'mattn/emmet-vim' " emmet
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-commentary' 
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'terryma/vim-multiple-cursors'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'} " toggle with :InstantMarkdownPreview and :InstantMarkdownStop
Plug 'leafOfTree/vim-vue-plugin'
Plug 'preservim/nerdtree'
Plug 'tmsvg/pear-tree'
call plug#end()


" ------------------
" Plugin Preferences
" ------------------
" vim-commentary
nmap <leader>/ gcc
vmap <leader>/ gcc 
let g:user_emmet_leader_key='<leader>' " expand emmet with `<leader>,`
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup = 1
let b:ale_fixers = {'javascript': ['prettier', 'eslint']} " ale linters
let g:ale_completion_enabled = 1 " ale completion
map <leader>n :NERDTreeToggle<CR>

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()
" navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" status line color
let g:lightline = {
	\ 'colorscheme': 'deus'
  \ }

