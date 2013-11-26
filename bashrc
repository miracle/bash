# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# color PS (cyan on default background)
if [ -n "$PS1" ]; then
  export PS1="\[\e[36;1m\][\u@\h \W]\$ \[\e[0m\]"
fi

# emacs `shell-mode' do not handle terminal escaping, it set 'TERM' to "dumb"
if [ -n "$PS1" ] && [ "$TERM" == "dumb" ]; then
  export PS1="[\u@\h \W]\$ "
fi


# Separate exports file
if [ -f ~/.bash/bash_exports ]; then
  . ~/.bash/bash_exports
fi

# Separate aliases file
if [ -f ~/.bash/bash_aliases ]; then
  . ~/.bash/bash_aliases
fi

# Separate functions file
if [ -f ~/.bash/bash_functions ]; then
  . ~/.bash/bash_functions
fi

# Separate sources file
if [ -f ~/.bash/bash_sources ]; then
  . ~/.bash/bash_sources
fi

# Separate private config file
if [ -f ~/.bash/bash_private ]; then
  . ~/.bash/bash_private
fi
