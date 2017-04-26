## .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

## Uncomment the following line if you don't like systemctl's auto-paging feature:
#export SYSTEMD_PAGER=

## Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source /usr/local/bin/liquidprompt/liquidprompt

## Startup
if [ "$ARCHEY" -eq 1 ]; then
	archey3
fi

## User specific aliases and functions
if [ "$ARCHEY" -eq 1 ]; then
	## Clear the screen and redisplay Archey if available
	alias clr='clear; archey3'
	## Clears screen, change directory back to /home/$USER, redisplay archey and revoke sudo cached credentials.
	alias ~='cd ~; clear; archey3; sudo --remove-timestamp'

elif [ "$ARCHEY" -eq 0 ]; then
	alias clr='clear'
	alias ~='cd ~; clear; sudo --remove-timestamp'
fi

## Vim-like command to exit session
alias :q='exit'
## ls with Long listing, inode data, human readable formatting, and coloring
alias ls='ls -l  --human-readable --inode --color=auto'
## Same as above with all hidden files
alias la='ls -l --human-readable --inode --almost-all --color=auto'
## Move one directory up
alias ..='cd ./..'
alias rainbowstream='clear; rainbowstream'

## Misc. Bash features
shopt -s autocd
