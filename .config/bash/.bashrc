# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

alias ls='ls --color=auto'
PS1='\[\033[01;34m\][\[\033[01;36m\]\t\[\033[01;34m\]][\[\033[01;36m\]\W\[\033[34m\]]\[\033[00m\]\$ '


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# MariaDB
alias mysql-start='sudo systemctl start mariadb.service'
alias mysql-stop='sudo systemctl stop mariadb.service'
alias mysql-restart='sudo systemctl restart mariadb.service'
alias mysql-status='systemctl status mariadb.service'
alias mysql-enable='sudo systemctl enable mariadb.service'
alias mysql-disable='sudo systemctl disable mariadb.service'
alias mysql-admin='sudo mysql'
alias mysql='mysql -u vlascares -p'

# Apache2
alias apache-start='sudo systemctl start apache2.service'
alias apache-stop='sudo systemctl stop apache2.service'
alias apache-restart='sudo systemctl restart apache2.service'
alias apache-status='systemctl status apache2.service'
alias apache-enable='sudo systemctl enable apache2.service'
alias apache-disable='sudo systemctl disable apache2.service'

# Postgresql
alias postgres-start='sudo systemctl start postgresql.service'
alias postgres-stop='sudo systemctl stop postgresql.service'
alias postgres-restart='sudo systemctl restart postgresql.service'
alias postgres-status='systemctl status postgresql.service'
alias postgres-enable='sudo systemctl enable postgresql.service'
alias postgres-disable='sudo systemctl disable postgresql.service'

# Update Mint
alias update-mint='sudo apt-get update && sudo apt-get upgrade -y'

# Suspend 
alias suspend='sudo systemctl suspend'