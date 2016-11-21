if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias ls='ls -G'
alias l='ls -G'
alias ll='ls -G'
alias la='ls -Ga'
alias awk='gawk'

source ~/.nvm/nvm.sh

export PS1='\h@mac:\w\$ '
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export EDITOR=vim

source ~/.env

export GOPATH="/Users/rkd/./.gopath"

cd() {
  flag=1
  oldpath=$1
  newpath=""
  for ((i=0; i<${#oldpath}; i++)); do
    one="${oldpath:$i:1}"
    if [ "." != "$one" ]
    then
      flag=0
    else
      if [ $i == 1 ]
      then
        newpath="$newpath.."
      elif [ $i -gt 1 ]
        then
          newpath="$newpath/.."
      fi
    fi
  done
  if [ "flag" == 0]; then
    builtin cd "$1"
  else
    builtin cd "$newpath"
  fi
}
