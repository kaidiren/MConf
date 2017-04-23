if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias ls='ls -G'
alias l='ls -G'
alias ll='ls -G'
alias la='ls -Ga'
alias awk='gawk'
alias emacs='emacs -nw'
alias e='emacs -nw'
alias vi='vim'
alias v='vim'
alias openmd='open -a Typora.app'

source ~/.nvm/nvm.sh

export PS1='\h@mac:\w\$ '


[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export EDITOR=vim

source ~/.env

export GOPATH="/Users/rkd/./.gopath"

if [ -f ~/.smartcd.sh ]; then
  source ~/.smartcd.sh
fi
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"
