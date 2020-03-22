dot-files
=========

## Installation

### Using Git and the bootstrap script

* Clone the repository to a local directory like `~/Source/dot-files`
* Add `~/dot-files` as a symlink to the source.
* Install Oh-My-Zsh

```bash
$ git clone https://github.com/devine-kevin/dot-files.git ~/Source 
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
$ cp ~/Source/dot-files/zsh_profile/.zshrc ~/.zshrc
```

### Add custom commands

Use `~/.oh-my-zsh/custom/extra.zsh` to set up gitcongif

```bash
# Git credentials not in the repository
GIT_AUTHOR_NAME="Kevin Devine"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="devine.kevin@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```
