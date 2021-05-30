# -----------------------------
# Alias
# -----------------------------
# グローバルエイリアス
alias -g L='| less'
alias -g H='| head'
alias -g G='| grep'
alias -g GI='| grep -ri'

# お ま た せ
alias ls='ls --color=auto'
alias la='ls -la --color=auto'
alias ll='ls -l --color=auto'

alias so='source'
alias vi=${commands[nvim]:-"vim"}
alias vi=${commands[nvim]:-"vim"} . ' ~/.zshrc'
alias c='cdr'
alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias ..='c ../'
alias back='pushd'
alias diff='diff -U1'
alias tma='tmux attach'
alias tml='tmux list-window'
alias pwsh='/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe'
alias clip='/mnt/c/Windows/System32/clip.exe'
