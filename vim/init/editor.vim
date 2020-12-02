" ---------------
" Editor settings
" ---------------

" -----------------
" Syntax and indent
" -----------------
set autoindent
set showmatch	" show matching braces when text indicator is over them
set tabstop=2 shiftwidth=2 softtabstop=0 expandtab smarttab
syntax on	" enable syntax highlighting
nnoremap <leader>F ggdG[p " reformat file


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


" -------
" Folding
" -------
set foldlevel=1      	" this is just what i use
set foldmethod=indent	" fold based on indent
set foldnestmax=10   	" deepest fold is 10 levels
set nofoldenable     	" don't fold by default

