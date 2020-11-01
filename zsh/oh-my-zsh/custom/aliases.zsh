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
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dcb='docker-compose build'
alias bomb='dcd && docker-compose build && dcu -d && btco && stco'
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
alias bsr='npm run backstop:reference'
alias bst='npm run backstop:test'
#alias bsa='backstop approve --config="backstop-config.js"'

function docker-ssh {
    docker exec -it $1 /bin/bash
}

function bsa {
  backstop approve --config="backstop-config.js" --filter="$1";
}

# Directory shortcuts
alias asi='cd ~/dev/proj/asi/ngx-esp'
alias asi-start='asi && ng run cosmos-components:storybook'
alias asi-lint='asi && ng run cosmos-components:lint'
alias asi-test='asi && ng run cosmos-components:test'
alias asi-build='asi && ng build encore --configuration=uat'
alias bsd='cd ~/dev/proj/bsd-account'
alias dops='cd ~/dev/proj/design-ops-and-systems'
alias oc='cd ~/dev/proj/onecloud-frontend'
alias ppsa='cd ~/dev/proj/projector-ui-library'
alias sites='cd ~/Sites'
alias tco='cd ~/dev/think/think_www'
alias think=tco
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
alias gms='git merge --squash'
alias grb='git rebase'
alias gl='git log --oneline'
alias tag='git tag'
alias pull='git pull'
alias push='git push origin'

# Gets the reference list of branches that were merged into the current branch
# Useful for finding stale branches for deletion
function git-merged () {
  for branch in `git branch -r --merged | grep -v HEAD`; 
  do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
}

function tco-start {
  tco;
  docker-compose up -d;
  nvm use 8;
  btco;
  stco;
}

function tco-stop {
  docker-compose stop;
  nvm use default;
}
