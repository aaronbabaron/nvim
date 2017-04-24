#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
CLASSPATH=$CLASSPATH:/usr/share/java/mysql.jar
export CLASSPATH

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias acki='ack --ignore-dir=dist --ignore-dir=node_modules'
alias ackin='ack --ignore-dir=dist'
alias ackid='ack --ignore-dir=node_modules'

alias ll='ls -al'

alias gc='git commit'
alias gs='git status'
alias gsta='git stash'
alias gl='git log --graph'
alias ga='git add'
alias gp='git push'
alias gpom='git push origin master'
alias gpu='git pull'
alias gpuom='git pull origin master'
alias gpuupm='git pull upstream master'
alias greupm='git pull --rebase upstream master'
alias greom='git pull --rebase origin master'
alias gco='git checkout'
alias grebush='git pull --rebase upstream master && git push origin master'
alias grebc='git rebase --continue'
alias grebab='git rebase --abort'
alias grebs='git rebase --skip'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/aaronbabaron/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/home/aaronbabaron/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/aaronbabaron/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/aaronbabaron/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
