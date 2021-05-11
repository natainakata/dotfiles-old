export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

export EDITOR=${commands[nvim]:-"vim"}

path=(
    ~/bin
    ~/.local/bin
    ~/.anyenv/bin
    $path
)
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
eval "$(anyenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
