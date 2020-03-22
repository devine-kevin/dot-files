## Alias ##

alias drop="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias sbx="cd ~/Sites/soapbox"
alias g="git "

alias cdgit="cd /Users/kevindevine/Documents/Soapbox-GitHub";
alias cdcore="cd /Users/kevindevine/Documents/Soapbox-GitHub/soapbox-core"
alias cddb="cd /Users/kevindevine/Documents/Soapbox-Github/soapbox-database"
alias cdgen="cd /Users/kevindevine/Documents/Soapbox-Github/soapbox-generator"
alias cdhq="cd /Users/kevindevine/Documents/Soapbox-Github/soapbox-headquarters"
alias cdscripts="cd /Users/kevindevine/Documents/Soapbox-Github/soapbox-scripts"

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

#alias sshsbx1="ssh nonprofi@picnetsb001.directrouter.com"
alias prodpass="echo 'jX1opicES2FrJ4JW4z0e' | pbcopy "
alias stagepass="echo 'N9xP2oDI4yv7sMZlYH1e' | pbcopy "
alias pipass="echo 'raspberry' | pbcopy "
alias sshpi="pipass; ssh pi@10.0.0.42"
alias sshpdrive="ssh administrator@192.168.2.22"
alias sshslice="ssh kdevine@173.203.85.253"
alias sshstage="stagepass; ssh stgnpsb2@picnetweb008.directrouter.com"
alias sshweb1="prodpass; ssh picnetkevin@picnetweb001.directrouter.com"
alias sshweb2="prodpass; sssh picnetkevin@picnetweb002.directrouter.com"
alias sshweb3="prodpass; ssh picnetkevin@picnetweb003.directrouter.com"
alias sshweb4="prodpass; ssh picnetkevin@picnetweb004.directrouter.com"
alias sshweb5="prodpass; ssh picnetkevin@picnetweb005.directrouter.com"
alias sshweb6="prodpass; ssh picnetkevin@picnetweb006.directrouter.com"
alias sshweb7="prodpass; ssh picnetkevin@picnetweb007.directrouter.com"
alias sshweb8="prodpass; ssh picnetkevin@picnetweb008.directrouter.com"
