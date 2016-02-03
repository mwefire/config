# additonally (to /etc/bash.bashrc) used for non-login shells (interactive) to "root"


# ********************************************************************************
# *** Bash-Settings                                                            ***
# ********************************************************************************
# don't put duplicate lines in the history
export HISTCONTROL='ignoredups'


# ********************************************************************************
# *** Environment variables                                                    ***
# ********************************************************************************
export PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/bin/X11'

if [ "$BASH" ]; then

        # gelbes Prompt
        #PS1='\[\e[0;33m\]\u@\h:\[\e[1;34m\]\w\[\e[0;33m\]#\[\e[0m\] '

        # rotes Prompt
        PS1='\[\e[0;31m\]\u@\h:\[\e[1;34m\]\w\[\e[0;31m\]#\[\e[0m\] '
fi


# ********************************************************************************
# *** Set-up applications and their environment variables                      ***
# ********************************************************************************
# colors for the "ls"-application
eval `dircolors --bourne-shell`


# ********************************************************************************
# *** Aliases                                                                  ***
# ********************************************************************************
# "ls"-application "shortcuts"
alias 'ls'='ls --color=auto'
alias 'la'='ls -a'
alias 'll'='ls -l'
alias 'l'='ls -al'
alias 'cls'='clear'

# some aliases to avoid making mistakes
alias 'rm'='rm -i'
alias 'cp'='cp -i'
alias 'mv'='mv -i'

unset MAILCHECK

# ********************************************************************************
# *** Miscellaneous                                                            ***
# ********************************************************************************
# Disallow others to write to the terminal
if [ "$SSH_CLIENT" == "" ]; then
        mesg n
else
        if [ "$SSH_TTY" != "" ]; then
                mesg n
        fi
fi

# Set file creation mask
umask u=rwx,g=rx,o=rx
