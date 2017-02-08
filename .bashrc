## .bashrc
archey3

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/dev/liquidprompt/liquidprompt

# User specific aliases and functions
alias clr='clear; archey3'
alias :q='exit'
alias ls='ls -lih --color=auto'
alias la='ls -Alih --color=auto'
alias ~='cd ~; clear; archey3'
