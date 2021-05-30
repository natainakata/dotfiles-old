# ---------------------------
# Plugin
# ---------------------------
# zplugが無ければインストール
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

zplug "mafredri/zsh-async"
zplug "plugins/git", from:oh-my-zsh
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "chrissicool/zsh-256color"
zplug "mrowa44/emojify", as:command
zplug "rupa/z", use:"*.sh"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "b4b4r07/enhancd", use:init.sh

# インストール処理

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
