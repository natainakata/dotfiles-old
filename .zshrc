# natai nakata's .zshrc

# ---------------------------
# Plugin
# ---------------------------
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
zinit light chrissicool/zsh-256color

zinit ice pick"async.zsh" src"pure.zsh" 
zinit light sindresorhus/pure
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit ice as"program" 
zinit light mrowa44/emojify
zinit ice pick"*.sh" 
zinit light rupa/z 
zinit ice wait'0'
zinit light zsh-users/zsh-completions
zinit ice pick"init.sh"
zinit light b4b4r07/enhancd


# -----------------------------
# General
# -----------------------------
# 色付
autoload -Uz colors ; colors

# ディレクトリスタックへの自動追加
setopt autopushd

# 重複はいけない。
setopt pushdignoredups

# 8ビット文字
setopt print_eight_bit

# Vim信者になろう
bindkey -v

# フローコントロール無効
setopt noflowcontrol
    
# ワイルドカード展開
setopt extendedglob

# cd省略
setopt autocd

# beep無効化
setopt nobeep

# 括弧など補完
setopt autoparamkeys

# ステータス表示
setopt printexitvalue

# バックグラウンドプロセスのおしらせ
setopt notify

# ファイル名の展開でディレクトリにマッチした場合 末尾に / を付加
setopt mark_dirs

# コマンドのスペルチェックをする
setopt correct

# コマンドライン全てのスペルチェックをする
setopt correct_all

# 上書きリダイレクトの禁止
setopt no_clobber

# パスの最後のスラッシュを削除しない
setopt noautoremoveslash

# その他
umask 022
ulimit -c 0

# ---------------------------
# Tmux
# ---------------------------
if [ $SHLVL = 1 ]; then
  tmux
fi


# -----------------------------
# Divide zshrc
# -----------------------------
ZSHHOME="${HOME}/.zsh"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
    -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
