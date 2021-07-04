# natai nakata's .zshenv

export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

export EDITOR=${commands[nvim]:-"vim"}

. $HOME/.asdf/asdf.sh

path=(
    ~/bin
    ~/.local/bin
    $path
)
fpath=(
    ${ASDF_DIR}/completions
    $fpath
)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_TMUX=1
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'

