### dotfiles

-   自身が利用する dotfiles を整理するための repository

---

#### .gitconfig について

* [user]部分は~/.gitconfig.local にまとめる

#### シンボリックリンク

```bash
cd ~

# bash
ln -s ./dotfiles/.bashrc ~/.bashrc
ln -s ./dotfiles/.bash_profile ~/.bash_profile # 必要に応じて
ln -s ./dotfiles/.bash_aliases ~/.bash_aliases

# editor
ln -s ./dotfiles/.vimrc ~/.vimrc
ln -s ./dotfiles/.editorconfig ~/.editorconfig

# git
ln -s ./dotfiles/.commit_template ~/.commit_template
ln -s ./dotfiles/.gitconfig ~/.gitconfig
ln -s ./dotfiles/.gitignore_global ~/.gitignore_global
touch ~/.gitconfig.local
```
