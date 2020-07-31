set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

let g:python3_host_prog = expand('~/nvim-python3/bin/python3')
let g:python_host_prog = expand('~/nvim-python2/bin/python2')

if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

    Plug 'tomasr/molokai'
    Plug 'altercation/vim-colors-solarized'
    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'scrooloose/nerdcommenter'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    " Plug 'Shougo/denite.nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'dag/vim-fish'
    Plug 'digitaltoad/vim-pug'
    Plug 'dNitro/vim-pug-complete'
    Plug 'posva/vim-vue'
    Plug 'leafgarland/typescript-vim'
    Plug 'mhinz/vim-sayonara'
    if !executable('fzf')
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    endif
    Plug 'junegunn/fzf.vim'
    Plug 'antoinemadec/coc-fzf'
    Plug 'whatyouhide/vim-tmux-syntax'
    Plug 'tjdevries/coc-zsh'
call plug#end()


call map(sort(split(globpath(&runtimepath, '_config/*.vim'))), {->[execute('exec "so" v:val')]})
