nmap <Leader>g [git]
nmap <silent>[git]s :call <SID>fugitive_float()<CR>
nmap <silent>[git]S :Gstatus<CR>
nmap <silent>[git]l :Glog<CR>
nmap <silent>[git]d :Gdiffsplit<CR>
nmap <silent>[git]a :Gwrite<CR>
nmap <silent>[git]c :Gcommit<CR>


function! s:fugitive_float()
    :Gstatus
    let buf = nvim_get_current_buf()
    let win = nvim_get_current_win()
    let config = { 
        \'relative': 'editor',
        \ 'row': 10,
        \ 'col': 10,
        \ 'width': nvim_win_get_width(win) / 2,
        \ 'height': nvim_win_get_height(win),
        \ 'anchor': 'NW',
        \ 'style': 'minimal',
        \}
    let win_id = nvim_open_win(buf, v:false, config)
    call nvim_win_close(win, 0)
    let win_num = win_id2tabwin(win_id)[1]
    execute win_num . 'windo :'
endfunction
