#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Custom
# ~/.profile: executed by the command interpreter for login shells......

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# Set umask so that I set group on new files.
umask 002

# Change default terminal
# export TERM=rxvt-unicode-256color

# set default browser
if [ -n "$DISPLAY" ]; then
     BROWSER=firefox
fi

# turn on numlock at login
# setleds -D +num # doesn't work...

export PAGER=less
