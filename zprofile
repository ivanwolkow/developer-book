export PATH=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home/bin:$PATH

alias cd..="cd .."
alias l="ls -lpG"
alias la='ls -FGlAhp'
alias h=history
alias q="exit"
alias s='cd ~/src'

alias ss="/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

PS1='
$PWD
==> '

#super handy when you need to build/run something on linux etc
alias linux='docker run --rm -v $PWD:/usr/src -w /usr/src nitram509/debian-oraclejdk8-maven-cmake-gcc-gnueabihf'

cd() { builtin cd "$@"; l; }

alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display

dev() { ssh "username@dev-server-$1" ; }

#build pdf from a manpage (requires installed ghostscript)
manpdf() { man -t "$@" | ps2pdf - /tmp/manpdf_$1.pdf && open /tmp/manpdf_$1.pdf ;}

alias mc='LANG=en_EN.UTF-8 mc'
alias meetup='open "https://us04web.zoom.us/j/73073957358"'
