#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


# MariaDB
alias mysql-start='sudo systemctl start mysqld'
alias mysql-stop='sudo systemctl stop mysqld'
alias mysql-restart='sudo systemctl restart mysqld'
alias mysql-status='systemctl status mysqld'
alias mysql-enable='sudo systemctl enable mysqld'
alias mysql-disable='sudo systemctl disable mysqld'
alias mysql-admin='sudo mysql'
alias mysql='mysql -u vlascares -p'

# Apache2
alias apache-start='sudo systemctl start httpd'
alias apache-stop='sudo systemctl stop httpd'
alias apache-restart='sudo systemctl restart httpd'
alias apache-status='systemctl status httpd'
alias apache-enable='sudo systemctl enable httpd'
alias apache-disable='sudo systemctl disable httpd'

# Postgresql
alias postgres-start='sudo systemctl start postgresql'
alias postgres-stop='sudo systemctl stop postgresql'
alias postgres-restart='sudo systemctl restart postgresql'
alias postgres-status='systemctl status postgresql'
alias postgres-enable='sudo systemctl enable postgresql'
alias postgres-disable='sudo systemctl disable postgresql'


alias pgadmin-activate='source ~/pgadmin4/bin/activate'

alias update-mirrorlist='sudo reflector --verbose --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'
