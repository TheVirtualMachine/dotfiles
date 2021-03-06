# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Stop Ctrl-S and Ctrl-Q from suspending and resuming the terminal, respectively.
stty -ixon

# Path variables
# export JAVA_HOME="/user/lib/jbm/java-openjdk"
# export PATH=$JAVA_HOME/bin:$PATH

# Change prompt name
PS1='[\u@\W]\$ '

# Stop git from using a popup menu when prompting for password.
unset SSH_ASKPASS

# User specific aliases and functions
alias vim='vimx'

alias xzarchive='tar cfJ'

# Automatically recompile LaTeX file on save.
alias latexwatch="latexmk -pdf -pvc"

# Plugins
if [ -f `which powerline-daemon` ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	. /usr/share/powerline/bash/powerline.sh
fi

# Load GPG information.
export GPG_TTY=$(tty)
