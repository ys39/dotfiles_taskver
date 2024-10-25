### dotfiles

-   自身が利用する dotfiles を整理するための repository

---

#### .gitconfig について

-   [user]部分は~/.gitconfig.local にまとめる

#### シンボリックリンク

```bash
cd ~

# bash settings
ln -s ./dotfiles/.bashrc ~/.bashrc
ln -s ./dotfiles/.bash_profile ~/.bash_profile # 必要に応じて
ln -s ./dotfiles/.bash_aliases ~/.bash_aliases

# editor settings
ln -s ./dotfiles/.vimrc ~/.vimrc
ln -s ./dotfiles/.editorconfig ~/.editorconfig

# git settings
ln -s ./dotfiles/.commit_template ~/.commit_template
ln -s ./dotfiles/.gitconfig ~/.gitconfig
ln -s ./dotfiles/.gitignore_global ~/.gitignore_global
touch ./dotfiles/.gitconfig.local
ln -s ./dotfiles/.gitconfig.local ~/.gitconfig.local
```
