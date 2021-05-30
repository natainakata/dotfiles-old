# natai nakata's .zshrc

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






