# Set the editor to vim
export EDITOR='vim'

# Set the pager to vimpager if exist
if [ -e /usr/bin/vimpager ]; then
    export PAGER='vimpager'
else
    export PAGER='less'
fi

# Set language to en_US.utf8
export LC_ALL=en_US.utf8

# Set default language to LC_ALL value
export LANG="$LC_ALL"

if [ -n "$TMUX" ]; then
    export TERM=screen-256color
fi

# Set NNTP Server for epita newsgroups (slrn)
export NNTPSERVER=news.epita.fr

# History file path
export HISTFILE=~/.histfile

setopt SHARE_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS

# Zsh session history size
export HISTSIZE=1000000
# History file size
export SAVEHIST=1000000

# Source ssh-agent
[ -e /tmp/ssh_${USER}.agent ] && . /tmp/ssh_${USER}.agent
