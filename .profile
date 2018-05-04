PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
umask 027

function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\e[32m[\t]\e[0m \u@\h\e[33m [\w]\e[0m \$(parse_git_branch)\n> "

#general
alias ds='du -m  | grep -v "\/.*\/"'
alias l='ls -alF'

#SSH helpers
alias sssh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GOROOT=$HOME/.local/go
export GOPATH=$HOME/go
export GITROOT=/usr/local/git

export PATH=~/bin:$GITROOT/bin:$GOROOT/bin:$PATH
export PATH="$HOME/.local/n/bin:$PATH" # Add n to PATH for node scripting
export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting

eval "$($HOME/.local/bf/bin/ce init -)"
eval "$(direnv hook bash)"
. ~/.rvm/scripts/rvm

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

[ -f ~/.bash_env ] && . ~/.bash_env
