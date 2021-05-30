# ---------------------------
# fzf
# ---------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function fzf-src () {
    local selected_dir=$(ghq list -p | fzf)
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clean-screen
}

zle -N fzf-src
bindkey '^]' fzf-src

function fadd() {
    local out q n addfiles
    while out=$(
            git status --short |
            awk '{if (substr($0,2,1) !~ / /) print $2}' |
            fzf --multi --exit-0 --expect=ctrl-d); do
        q=$(head -1 <<< "$out")
        n=$[$(wc -l <<< "$out") - 1]
        addfiles=(`echo $(tail "-$n" <<< "$out")`)
        [[ -z "$addfiles" ]] && continue
        if [ "$q" = ctrl-d ]; then
            git diff --color=alweys $addfiles | less -R
        else 
            git add $addfiles
        fi
    done
}
