function! Term()
  call termopen(&shell, {'on_exit': 'OnExit'}, )
endfunction

function! CloseLastTerm()
  if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    :q
  endif
endfunction

function! OnExit(job_id, code, event)
  if a:code == 0
    call CloseLastTerm()
  endif
endfunction

function! s:GetBufByte()
    let byte = line2byte(line('$') + 1)
    if byte == -1
        return 0
    else
        return byte - 1
    endif
endfunction


tnoremap <silent> <esc><esc> <C-\><C-n>
if !exists('g:vscode')
  nnoremap <silent> <leader>T :call Term()<CR>
endif
