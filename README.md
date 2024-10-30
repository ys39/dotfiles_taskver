### dotfiles

* 自身が利用する dotfiles を整理するための repository
* Taskfileで管理する

### requirements
* git
* [taskfile](https://taskfile.dev/)
* [stow](https://www.gnu.org/software/stow/)

### .gitconfig について

* user部分は~/.gitconfig.local にまとめて、Git管理を外している

### setup

```bash
git clone git@github.com:ys39/dotfiles_taskver.git dotfiles
cd dotfiles
task setup
```
