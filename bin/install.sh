#!/usr/bin/env bash


set -ue

if [ -z "${DOTPATH:-}" ]; then
    DOTPATH=~/.dotfiles; export DOTPATH
fi



DOTFILES_GITHUB="https://github.com/natainakata/dotfiles.git"; export DOTFILES_GITHUB

install() {

    has()  {
        type "$1" > /dev/null 2>&1
    }

    symlink() {
        [ -e "$2" ] || ln -s "$1" "$2"
    }
    if [ -d "$DOTPATH" ]; then
        echo "ERROR: doffiles exists"
        exit 1
    fi
    if has git; then
        git clone --recursive "$DOTFILES_GITHUB" "$DOTPATH"
    elif has curl || has wget; then
        local tarball="https://github/com/natainakata/dotfiles/archive/master.tar.gz"
        if has curl; then
            curl -L "$tarball"
        elif has wget; then
            wget -O - "$tarball"
        fi | tar xvz
        if [ ! -d dotfiles-master ]; then
            echo "ERROR: dotfiles-master: Not Found"
            exit 1
        fi
        command mv -f dotfiles-master "$DOTPATH"
    else
        echo "ERROR: curl or wget required"
        exit 1
    fi
    echo "Download done" 
    symlink "$DOTPATH/.zshrc" "$HOME/.zshrc"
    symlink "$DOTPATH/.zshenv" "$HOME/.zshenv"
    symlink "$DOTPATH/tmux/.tmux.conf" "$HOME/.tmux.conf"
    symlink "$DOTPATH/vim" "$XDG_CONFIG_HOME/nvim"
    symlink "$DOTPATH/fish" "$XDG_CONFIG_HOME/fish"
    symlink "$DOTPATH/bin" "$HOME/bin"
}

install()
