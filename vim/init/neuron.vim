" --------------------------------------------
" Configuration for neuron zettelkasten in vim
" --------------------------------------------

let g:neuron_dir = '~/zettelkasten/' " requires trailing slash

" --------------
" Main functions
" --------------
function EditZettelUnderCursor()
  execute 'e '.g:neuron_dir.expand('<cfile>').'.md'
endfunction

function EditNewZettel()
  let l:id = system("od -An -N 4 -t 'x4' /dev/random")
  execute 'e '.trim(l:id).'.md'
	let l:body = [
	  \ '---',
	  \ 'date: '.strftime("%Y-%m-%dT%H:%M"),
	  \ '---',
	  \ '',
	  \ '# '
    \ ]
	call append(0, l:body)
  normal! dd$aPLACEHOLDER
endfunction

function! SearchZettels(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'dir': g:neuron_dir}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

function InsertFileLast()
  let last_file = "[[".expand('#:t:r')."]]"
  put = last_file
endfunction  

command! -nargs=* -bang SearchZettels call SearchZettels(<q-args>, <bang>0)


" -----------
" Keybindings 
" -----------
nnoremap <silent> <leader>zz :SearchZettels # <CR>
nnoremap <silent> <leader>zn :call EditNewZettel()<CR>
nnoremap <silent> <leader>zo :call EditZettelUnderCursor()<CR>
nnoremap <silent> <leader>zi :call InsertFileLast()<CR>

