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
alias md='open -a Typora.app'
alias ta='tmux attach -t base || tmux new -s base'
alias tb='tmux attach -t vs || tmux new -s vs'
alias tmux-save='tmux run-shell "/Users/rkd/.tmux/plugin/tmux-resurrect/scripts/save.sh"'
alias tmux-restore='tmux run-shell "/Users/rkd/.tmux/plugin/tmux-resurrect/scripts/restore.sh"'
alias rm='rmtrash'

export NVM_DIR="$HOME/.nvm"
source "/usr/local/opt/nvm/nvm.sh"

export PS1='\h@mac:\w\$ '

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export EDITOR="/usr/local/bin/nvim"

source ~/.env

export GOPATH="/Users/rkd/go"
export PATH="/Users/rkd/go/bin:$PATH"
# export PATH="$PATH:/usr/local/opt/go/libexec/bin"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/Users/rkd/Library/Python/3.6/bin:$PATH"
export PATH="/Users/rkd/Library/Python/3.7/bin:$PATH"
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

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home"
export PATH="${JAVA_HOME}/bin:$PATH"


_dep()
{
  local first="init ensure status prune version"
  local cur=${COMP_WORDS[COMP_CWORD]}
  local prev=${COMP_WORDS[COMP_CWORD-1]} # previous argument
  case "$COMP_CWORD" in
    1) COMPREPLY=( $(compgen -W "$first" -- $cur) ) ;;
    *) COMPREPLY=( $(compgen -W "$(ls)"  -- $cur) ) ;;
  esac
}

complete -o default -F _dep  dep



_go()
{
  local first="build clean doc env bug fix fmt generate get install list run test tool version vet"
  local cur=${COMP_WORDS[COMP_CWORD]}
  local prev=${COMP_WORDS[COMP_CWORD-1]} # previous argument
  case "$COMP_CWORD" in
    1) COMPREPLY=( $(compgen -W "$first" -- $cur) ) ;;
    *) COMPREPLY=( $(compgen -W "$(ls)"  -- $cur) ) ;;
  esac
}

complete -o default -F _go go

#export LLVM_DIR=/usr/local/Cellar/llvm@4/4.0.1/lib/cmake
export PATH="/usr/local/opt/gettext/bin:$PATH"
#export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export PATH="$PATH:/usr/local/eosio/bin"

#
# # Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
# export COCOS_CONSOLE_ROOT=/Users/rkd/game/cocos2d-x-3.17/tools/cocos2d-console/bin
# export PATH=$COCOS_CONSOLE_ROOT:$PATH
#
# # Add environment variable COCOS_X_ROOT for cocos2d-x
# export COCOS_X_ROOT=/Users/rkd/game
# export PATH=$COCOS_X_ROOT:$PATH
#
# # Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
# export COCOS_TEMPLATES_ROOT=/Users/rkd/game/cocos2d-x-3.17/templates
# export PATH=$COCOS_TEMPLATES_ROOT:$PATH
export PATH="/usr/local/opt/ncurses/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/lib64
export QT_HOMEBREW=true
export PATH="/usr/local/opt/qt/bin:$PATH"
