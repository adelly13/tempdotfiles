" ------------------------------------------------
" Language settings - template files and execution
" ------------------------------------------------

autocmd bufnewfile *.java :-1read ~/.vim/snippets/apcs.java
autocmd bufnewfile *.cpp :-1read ~/.vim/snippets/usaco.cpp
autocmd FileType java nnoremap <silent> <C-e> :cd %:p:h <CR> :! javac %:t<CR> :! java %:t:r<CR>
autocmd FileType python nnoremap <silent> <C-e> :cd %:p:h <CR> :! python3 %:t<CR>
autocmd FileType cpp nnoremap <silent> <C-e> :cd %:p:h <CR> :! crun %:t:r<CR> :! cat %:t:r.out<CR>
autocmd FileType go nnoremap <silent> <C-e> :cd %:p:h <CR> :! go run %:t<CR>
autocmd FileType markdown set spell spelllang=en_us,cjk

