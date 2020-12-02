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
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim' " bottom status line
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary' 
Plug 'tpope/vim-surround'
call plug#end()


" ------------------
" Plugin Preferences
" ------------------
colorscheme nord
let g:lightline = {'colorscheme': 'nord'} " status line color

" indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2

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
  \ 'coc-svelte',
	\ 'coc-tailwindcss',
	\ 'coc-tsserver',
	\ 'coc-vetur',
	\ ]

" confirm completion with `<leader>,`
inoremap <expr> <leader>, pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" fuzzy finding
nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <leader>r :Rg<CR>

