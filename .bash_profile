umask 027
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim

function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

random () {
        MATRIX="HpZld&xsG47f0)W^9gNa!)LR(TQjh&UwnvP(tD5eAzr6k@E&y(umB3^@!K^cbOCV)SFJoYi2q@MIX8!1"
        PASS=""
        n=1
        i=1
        [ -z "$1" ] && length=8 || length=$1
        [ -z "$2" ] && num=1 || num=$2
        while [ ${i} -le $num ]; do
                while [ ${n} -le $length ]; do
                        PASS="$PASS${MATRIX:$(($RANDOM%${#MATRIX})):1}"
                        n=$(($n + 1))
                done
                echo $PASS
                n=1
                PASS=""
                i=$(($i + 1))
        done
}


function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PATH=~/bin:/usr/local/bin:/opt/ec2-api-tools/bin:$PATH
export PATH="$HOME/.local/n/bin:$PATH" # Add n to PATH for node scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

eval "$($HOME/.local/bf/bin/ce init -)"
eval "$(direnv hook bash)"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

[ -f ~/.bash_env ] && . ~/.bash_env

