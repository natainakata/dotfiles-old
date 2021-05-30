set number
set cursorline
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
syntax enable
set t_Co=256


autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight NonText ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
autocmd ColorScheme * highlight Folded ctermbg=none
autocmd ColorScheme * highlight EndOfBuffer ctermbg=none

colorscheme onedark

au ColorScheme * hi LineNr       ctermbg=none ctermfg=240 cterm=italic " 行番号
au ColorScheme * hi StatusLine   ctermbg=none " アクティブなステータスライン
au ColorScheme * hi StatusLineNC ctermbg=none " 非アクティブなステータスライン
au ColorScheme * hi Comment      ctermfg=243 cterm=italic " コメントアウト
au ColorScheme * hi Statement    ctermfg=45
au ColorScheme * hi DiffAdd      ctermbg=24  " 追加行
au ColorScheme * hi Identifier   ctermfg=45 "cterm=bold
