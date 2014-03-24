dot-files
=========

## Installation

### Using Git and the bootstrap script

* Clone the repository to a local directory like `~/Source/dot-files`
* Add `~/dot-files` as a symlink to the source.
* The bootstrapper script will update from github and copy the files to the home directory.

``bash
git clone https://github.com/devine-kevin/dot-files.git && cd dot-files && source bootstrap.sh
``

To update, `cd` into your local `dot-files` repository and then:

``bash
source bootstrap.sh
``

### Add custom commands

Use `~/.extra` to set up gitcongif

```bash
# Git credentials not in the repository
GIT_AUTHOR_NAME="Kevin Devine"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="devine.kevin@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```
## Borrowed heavily from mathiasbynes
* https://github.com/mathiasbynens/dotfiles

