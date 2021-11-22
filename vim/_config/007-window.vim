" 新しいウィンドウを下に開く
set splitbelow
" 新しいウィンドウを右に開く
set splitright
if !exists('g:vscode')
  nnoremap <leader>ws :<C-u>split<CR>
  nnoremap <leader>wv :<C-u>vsplit<CR>
function! CloseBuf()
  if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    :q
  else
    :bd
  endif
endfunction

nnoremap <Leader>q :up<CR>:call CloseBuf()<CR>
endif
