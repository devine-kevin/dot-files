## Alias ##

alias drop="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias sbx="cd ~/Sites/soapbox"
alias g="git "

alias phpini="sudo vim /usr/local/etc/php/5.6/php.ini"
alias httpdconf="sudo vim /usr/local/etc/httpd/httpd.conf"

alias webstart="sudo apachectl -k restart"
alias dbstart="brew services restart mariaDb"
alias brewup="brew doctor; brew update; brew upgrade; brew cleanup; badge"
alias locateup="/usr/libexec/locate.updatedb; badge"
alias py="python3 "
alias pip="/usr/local/opt/python/bin/python3.7 -m pip "

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

## GIT Shortcuts ##
alias prune="git remote prune origin"
alias lsstale="git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}'"
alias rmstale="git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D"
alias lsmerged="git branch --merged | grep 'feature-*' | awk '{print $1}'"
alias rmmerged="git branch --merged | grep 'feature-*' | awk '{print $1}' | xargs git branch -d"
alias push="git rev-parse --abbrev-ref HEAD | awk '{print $1}' | xargs git push origin"
