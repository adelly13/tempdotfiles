" ------- 
" Plugins
" -------

" -------------------------------------
" Install and run vim-plug on first run
" -------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ddfiletype indent on " indents for HTML
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" --------------------
" Add vim-plug plugins
" --------------------
call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/indentLine'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim' " bottom status line
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-commentary' 
Plug 'tpope/vim-surround'
call plug#end()


" ------------------
" Plugin Preferences
" ------------------
colorscheme nord
let g:lightline = {'colorscheme': 'nord'} " status line color

nnoremap <silent> <leader>n :NERDTreeToggle<CR>:set nu rnu<CR>
let NERDTreeIgnore = ['node_modules']

" language servers and other extensions
let g:coc_global_extensions = [
	\ 'coc-clangd',
	\ 'coc-emmet',
	\ 'coc-html',
  \ 'coc-java',
	\ 'coc-jedi',
	\ 'coc-json',
  \ 'coc-pairs',
  \ 'coc-snippets',
	\ 'coc-tailwindcss',
	\ 'coc-tsserver',
	\ 'coc-vetur',
	\ ]

" fuzzy finding
nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <leader>r :Rg<CR>

" latex
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:vimtex_syntax_conceal_default = 0
let g:vimtex_syntax_conceal = {
    \ 'fancy': 1,
    \ 'greek': 1,
    \ 'math_delimiters': 1,
    \ 'styles': 1,
  \}

" snippets
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger = '<C-k>'
let g:UltiSnipsJumpForwardTrigger = '<C-n>'
let g:UltiSnipsJumpBackwardTrigger = '<C-p>'

" confirm completion with `<leader>,`
inoremap <expr> <leader>, pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
