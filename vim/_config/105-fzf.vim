function! s:find_git_root()
    return system('git rev-parce --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>,
    \ fzf#vim#with_preview(
    \   {'options': ['--layout=reverce', '--info=inline', 'head -20 {}']}), <bang>0)

command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
    \   fzf#vim#with_preview({'options': ['--layout=reverce', '--info=inline', 'head -20 {}']}, <bang>0)


autocmd! FileType fzf
autocmd  FileType fzf set noshowmode noruler nonu

if has('nvim')
  function! s:create_float(hl, opts)
    let buf = nvim_create_buf(v:false, v:true)
    let opts = extend({'relative': 'editor', 'style': 'minimal'}, a:opts)
    let win = nvim_open_win(buf, v:true, opts)
    call setwinvar(win, '&winhighlight', 'NormalFloat:'.a:hl)
    call setwinvar(win, '&colorcolumn', '')
    return buf
  endfunction

  function! FloatingFZF()
    " Size and position
    let width = float2nr(&columns * 0.9)
    let height = float2nr(&lines * 0.6)
    let row = float2nr((&lines - height) / 2)
    let col = float2nr((&columns - width) / 2)

    " Border
    let top = '╭' . repeat('─', width - 2) . '╮'
    let mid = '│' . repeat(' ', width - 2) . '│'
    let bot = '╰' . repeat('─', width - 2) . '╯'
    let border = [top] + repeat([mid], height - 2) + [bot]

    " Draw frame
    let s:frame = s:create_float('Comment', {'row': row, 'col': col, 'width': width, 'height': height})
    call nvim_buf_set_lines(s:frame, 0, -1, v:true, border)

    " Draw viewport
    call s:create_float('Normal', {'row': row + 1, 'col': col + 2, 'width': width - 4, 'height': height - 2})
    autocmd BufWipeout <buffer> execute 'bwipeout' s:frame
  endfunction

  let g:fzf_layout = { 'window': 'call FloatingFZF()' }
endif

"

" Bind

nmap <silent> <leader>ext :<C-u>Filetypes<CR>
nmap <silent> <leader>l :<C-u>Lines<CR>
nmap <silent> <leader>s :<C-u>Rg<CR>
nmap <silent> <leader>B :<C-u>Buffers<CR>
nmap <silent> <leader>W :<C-u>Windows<CR>
nmap <silent> <leader>p :<C-u>History<CR>
nmap <silent> <leader>j :<C-u>FZF<CR>

