# bash_aliases

alias su="su -"
alias sudo="sudo -E"

alias skim="(head -5; tail -5) <"

# du and sort
alias ds='du -ks *|sort -n'

# cd ..
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'
alias .....='cd .....'
alias ......='cd ......'
alias .......='cd .......'
alias ........='cd .........'

# http server
alias httpserver="python -c 'import SimpleHTTPServer; SimpleHTTPServer.test()'"

# Slow vim startup fix with many plugins
alias vim="vim -X"

# Sort files by Size
alias sortbysize="ls -s | sort -n"

# Show where you copy
alias cp="cp -v"

# Make it no matter what
alias mkdir="mkdir -p"

# command
alias ll='ls -l -G'
alias rm='rm -i'
alias emacs='emacs -nw'

