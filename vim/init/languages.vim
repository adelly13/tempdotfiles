" ------------------------------------------------
" Language settings - template files and execution
" ------------------------------------------------

autocmd FileType java nnoremap <silent> <C-e> :cd %:p:h <CR> :! javac %:t<CR> :! java %:t:r<CR>
autocmd FileType python nnoremap <silent> <C-e> :cd %:p:h <CR> :! python3 %:t<CR>
autocmd FileType cpp nnoremap <silent> <C-e> :cd %:p:h <CR> :! crun %:t:r<CR> :! cat %:t:r.out<CR>
autocmd FileType go nnoremap <silent> <C-e> :cd %:p:h <CR> :! go run %:t<CR>
autocmd FileType markdown,tex set spell spelllang=en_us,cjk
 " auto spell fix
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
