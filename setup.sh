#!/bin/sh

# dotfilesのディレクトリパスを取得
DOTFILES_DIR="$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)"

# シンボリックリンクを作成する関数
create_symlink() {
    src=$1
    dest=$2
    if [ -e "$dest" ]; then
        echo "$dest already exists, skipping..."
    else
        ln -s "$src" "$dest"
        echo "Created symlink: $dest -> $src"
    fi
}

# シンボリックリンクを作成
echo "Creating symlinks for bash and zsh..."

# bash settings
create_symlink "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
create_symlink "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"
create_symlink "$DOTFILES_DIR/.bash_aliases" "$HOME/.bash_aliases"

# zsh settings
create_symlink "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/.zsh_aliases" "$HOME/.zsh_aliases"

# editor settings
create_symlink "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
create_symlink "$DOTFILES_DIR/.editorconfig" "$HOME/.editorconfig"

# git settings
create_symlink "$DOTFILES_DIR/.commit_template" "$HOME/.commit_template"
create_symlink "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
create_symlink "$DOTFILES_DIR/.gitignore_global" "$HOME/.gitignore_global"

# .gitconfig.localは存在しない場合に作成
if [ ! -f "$DOTFILES_DIR/.gitconfig.local" ]; then
    touch "$DOTFILES_DIR/.gitconfig.local"
    echo "Created empty file: $DOTFILES_DIR/.gitconfig.local"
fi
create_symlink "$DOTFILES_DIR/.gitconfig.local" "$HOME/.gitconfig.local"

echo "All symlinks created successfully!"
