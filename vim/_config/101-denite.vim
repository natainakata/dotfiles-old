" Migration FZF
" autocmd FileType denite call s:denite_my_settings()
" autocmd VimEnter * call s:set_denite_options()
" autocmd VimEnter * call s:set_denite_grep()
" autocmd VimEnter * call s:set_denite_keymap()
" 
" function! s:denite_my_settings() abort
"     nnoremap <silent><buffer><expr> <CR>
"         \ denite#do_map('do_action')
"     nnoremap <silent><buffer><expr> d
"         \ denite#do_map('do_action', 'delete')
"     nnoremap <silent><buffer><expr> p
"         \ denite#do_map('do_action', 'preview')
"     nnoremap <silent><buffer><expr> q
"         \ denite#do_map('quit')
"     nnoremap <silent><buffer><expr> i
"         \ denite#do_map('open_filter_buffer')
"     nnoremap <silent><buffer><expr> <Space>
"         \ denite#do_map('toggle_select').'j'
" endfunction
" 
" let s:denite_win_width_percent = 0.3
" let s:denite_win_height_percent = 0.3
" let s:denite_default_options = {
"     \ 'winwidth': float2nr(&columns * s:denite_win_width_percent),
"     \ 'wincol': float2nr((&columns - (&columns * s:denite_win_width_percent)) / 2),
"     \ 'winheight': float2nr(&lines * s:denite_win_height_percent),
"     \ 'winrow': float2nr((&lines - (&lines * s:denite_win_height_percent)) / 2),
"     \ 'highlight_filter_background': 'DeniteFilter',
"     \ 'prompt': '> ',
"     \ 'start_filter': v:false,
"     \ }
" let s:denite_option_array = []
" for [key, value] in items(s:denite_default_options)
"     call add(s:denite_option_array, '-'.key.'='.value)
" endfor
" 
" function s:set_denite_options() 
"     call denite#custom#option('default', s:denite_default_options)
" endfunction
" 
" function! s:set_denite_grep()
"     call denite#custom#var('file/rec', 'command',
"         \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
"     call denite#custom#filter('matcher/ignore_globs', 'ignore_globs', 
"         \ [ '.git/', '__pycache__/', 
"         \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
"     
"     " Ag command on grep source
"     call denite#custom#var('grep', 'command', ['ag'])
"     call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
"     call denite#custom#var('grep', 'recursive_opts', [])
"     call denite#custom#var('grep', 'pattern_opt', [])
"     call denite#custom#var('grep', 'separator', ['--'])
"     call denite#custom#var('grep', 'final_opts', [])
" endfunction
" command! -nargs=? Dgrep call s:Dgrep(<f-args>)
" function s:Dgrep(...)
"     if a:0 > 0
"         execute(':Denite -buffer-name=grep-buffer-denite grep -path='.a:1)
"     else
"         execute(':Denite -buffer-name=grep-buffer-denite '.join(s:denite_option_array, ' ').' grep')
"     endif
" endfunction
" 
" " show Denite grep results
" command! Dresume execute(':Denite -resume -buffer-name=grep-buffer-denite '.join(s:denite_option_array, ' ').'')
" " next Denite grep result
" command! Dnext execute(':Denite -resume -buffer-name=grep-buffer-denite -cursor-pos=+1 -immediately '.join(s:denite_option_array, ' ').'')
" " previous Denite grep result
" command! Dprev execute(':Denite -resume -buffer-name=grep-buffer-denite -cursor-pos=-1 -immediately '.join(s:denite_option_array, ' ').'')
" 
" " keymap
" function! s:set_denite_keymap()
"     call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
"     call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
"     nmap <silent> <leader>t :<C-u>Denite filetype<CR>
"     nmap <silent> <leader>p :<C-u>Denite file/rec<CR>
"     nmap <silent> <leader>j :<C-u>Denite line<CR>
"     nmap <silent> <leader>s :<C-u>Denite grep<CR>
"     nmap <silent> <leader>b :<C-u>Denite buffer<CR>
"     nmap <silent> <leader>] :<C-u>DeniteCursorWord grep<CR>
" endfunction
