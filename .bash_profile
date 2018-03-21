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
alias v='nvim'
alias vi='nvim'
alias vim='vim'
alias ide='idea'
alias i='idea'
alias openmd='open -a Typora.app'
alias ta='tmux attach -t base || tmux new -s base'
alias tb='tmux attach -t vs || tmux new -s vs'
alias tmux-save='tmux run-shell "/Users/rkd/.tmux/plugin/tmux-resurrect/scripts/save.sh"'
alias tmux-restore='tmux run-shell "/Users/rkd/.tmux/plugin/tmux-resurrect/scripts/restore.sh"'

source ~/.nvm/nvm.sh

export PS1='\h@mac:\w\$ '

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export EDITOR=vim

source ~/.env

export GOPATH="/Users/rkd/go"

export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"
export TERM=screen-256color


_truffle()
{
  local first="help version init compile migrate deploy build test console install publish networks watch serve exec unbox"
  local cur=${COMP_WORDS[COMP_CWORD]}
  local prev=${COMP_WORDS[COMP_CWORD-1]} # previous argument
  case "$COMP_CWORD" in
    1) COMPREPLY=( $(compgen -W "$first" -- $cur) ) ;;
    *) COMPREPLY=( $(compgen -W "$(ls)"  -- $cur) ) ;;
  esac
}

complete -o default -F _truffle  truffle

alias eosioc='docker-compose exec walletd /opt/eosio/bin/eosioc -H eosiod'
