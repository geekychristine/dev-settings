PATH=/usr/local/git/bin:$PATH
export PATH=/usr/local/bin/:$PATH
export PATH=~/npm/bin:$PATH

NORM="$(tput setaf 7)"
CYAN="$(tput setaf 73)"
ORANGE="$(tput setaf 209)"
GRAY="$(tput setaf 243)"
GREEN="$(tput setaf 78)"

PS1="🔆  \[$CYAN\]\u \[$ORANGE\]\w \[$GREEN\]$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\n\[$GRAY\]→\[$NORM\] "

alias gcm='git commit -m'
alias gst='git status'
alias gco='git checkout'
alias gra='git remote add'
alias grd='git push origin --delete'
alias gcon='git config user.email'
