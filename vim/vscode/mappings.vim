" finder
nnoremap <silent> <leader>p <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
nnoremap <silent> <leader><leader> <Cmd>call VSCodeNotify('workbench.action.showCommands')<CR>

" window
nnoremap <leader>ws <Cmd>call VSCodeNotify('workbench.action.splitEditor')<CR>
nnoremap <leader>wv <Cmd>call VSCodeNotify('workbench.action.splitEditorOrthogonal')<CR>
nnoremap Q <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>

" git
nmap <leader>g [git]
nmap <silent> <leader>[git]c <Cmd>call VSCodeNotify('git.commit')<CR>
nmap <silent> <leader>[git]a <Cmd>call VSCodeNotify('git.stage')<CR>
nmap <silent> <leader>[git]l <Cmd>call VSCodeNotify('git.viewHistory')<CR>

" terminal
nnoremap <leader>T <Cmd>call VSCodeNotify('workbench.action.terminal.newInActiveWorkspace')<CR>

" runner
nnoremap <leader>go <Cmd>call VSCodeNotify('code-runner.run')<CR>
