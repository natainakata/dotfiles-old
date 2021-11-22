if !exists('g:vscode')
    let g:NERDTreeChDirMode=2
    let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
    let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
    let g:NERDTreeShowBookmarks=1
    let g:nerdtree_tabs_focus_on_files=1
    let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
    let g:NERDTreeWinSize = 30
    let NERDTreeShowHidden=1
    nnoremap <Leader>f :NERDTreeTabsToggle<CR>
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
    augroup NERD
        au!
        autocmd VimEnter * NERDTree
        autocmd VimEnter * wincmd p
        autocmd VimEnter * wincmd I
    augroup END
endif
