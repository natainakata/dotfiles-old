set completeopt=menuone,noinsert
inoremap <silent><expr><CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr><tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<tab>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

