# bash_functions

# Where/What is this binary? Shows extended ls output
function what() {
    which $1 | xargs ls -la
}

function unrax() {
if (unrar vb "$1" | grep ".*/">/dev/null); then
    echo $1
    unrar x "$1"
else
    echo $1
    unrar x -ad "$1"
fi
}

# == unrar all files in dir. ==
# unrax unrars and created a folder if RAR doesn't contain one, to stop cluttering the current path.
# depends on unrax in .bash_functions
function unrax-all() {
    for i in $( ls *.rar ); do unrax "$i"; echo "$i"; done
}


function extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# grep it
function grepit(){
    find . -name "*${2}" -print | xargs grep -nir "${1}"
}

# mkdir, and cd
function mcd() {
    mkdir -p "$1" && cd "$1";
}

# find it 
function ft() {
    find . -name "$2" -exec grep -il "$1" {} \;
}
