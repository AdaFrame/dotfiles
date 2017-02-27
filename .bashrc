## .bashrc

## Exports
export EDITOR='/bin/vim'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

## Uncomment the following line if you don't like systemctl's auto-paging feature:
#export SYSTEMD_PAGER=

## Only load Liquid Prompt in interactive shells, not from a script or from scp
#[[ $- = *i* ]] && source ~/dev/liquidprompt/liquidprompt
[[ $- = *i* ]] && source /usr/local/bin/liquidprompt/liquidprompt

## Startup
archey3

## User specific aliases and functions
## Clear the screen and redisplay Archey
alias clr='clear; archey3'
## Vim-like command to exit session
alias :q='exit'
## ls with Long listing, inode data, human readable formatting, and coloring
alias ls='ls -l  --human-readable --inode --color=auto'
## Same as above with all hidden files
alias la='ls -l --human-readable --inode --almost-all --color=auto'
## Clears screen, change directory back to /home/$USER, redisplay archey and revoke sudo cached credentials.
alias ~='cd ~; clear; archey3; sudo --remove-timestamp'
## Move one directory up
alias ..='cd ./..'

## Misc. Bash features
shopt -s autocd
