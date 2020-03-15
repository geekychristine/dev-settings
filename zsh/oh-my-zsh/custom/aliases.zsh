# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

# SSH Key Commands
alias sshgen='ssh-keygen -t rsa -b 4096 -C "christine.martino@thinkcompany.com"'
alias sshid='eval "$(ssh-agent -s)"'
alias sshadd='ssh-add -K ~/.ssh/id_rsa'
alias sshcopy='pbcopy < ~/.ssh/id_rsa.pub'

# Common Task Shortcuts
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias snaps='npm test -- -u'
alias build='npm run build'
alias start='npm start'
alias test='npm test'
alias pack='npm pack'
alias vcs='cd ~/Library/Application Support/Code/User'
alias install-sb='npm i --save-dev storybook-addon-jsx @storybook/addon-backgrounds @storybook/addon-knobs @storybook/addon-notes @storybook/addon-options @storybook/addon-viewport @storybook/addons @storybook/react @storybook/storybook-deployer'
alias jekstart='bundle exec jekyll serve'
alias btco='npm run build:tbiv3'
alias stco='npm run start:tbiv3'


# Directory shortcuts
alias sites='cd ~/Sites'
alias bsd='cd ~/dev/proj/bsd-account'
alias oc='cd ~/dev/proj/onecloud-frontend'
alias dops='cd ~/dev/proj/design-ops-and-systems'
alias fen='cd ~/dev/proj/fennec-ui'
alias think='cd ~/dev/think'
alias uxd='cd ~/dev/think/uxd-summit-ui'
alias sb='npm run storybook'

# System Commands
alias hosts='sudo nano /etc/hosts'
alias flushdns='sudo killall -HUP mDNSResponder'
alias usedport='sudo lsof -i'

# Git Shortcuts
alias gc='git commit -m'
alias gs='git status'
alias gf='git fetch --all'
alias gst='git stash'
alias gpop='git stash pop'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gra='git remote add'
alias gb='git branch'
alias gbd='git branch -D'
alias gbrn='git branch -m'
alias gbdr='git push origin --delete'
alias guser='git config user.email'
alias gup='git push --set-upstream origin'
alias gm='git merge'
alias grb='git rebase'
alias gl='git log --oneline'
alias tag='git tag'
alias pull='git pull'
alias push='git push origin'
