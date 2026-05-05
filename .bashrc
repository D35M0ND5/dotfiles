# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'




#-----------------------------------------------
# my stuff                                     |
#-----------------------------------------------
# pushd and popd
alias armoire='pushd /media/armoire/Everything/ > /dev/null'
alias back='popd > /dev/null'

# Armoire shortcuts
alias toarmoire='cd /media/armoire/Everything/'
export ARMOIRE="/media/armoire/Everything/"
# export CDPATH=".:/media/armoire/Everything/:$HOME"

# Quick directory stacking
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# directory bookmarking system
export SAVED_DIRS="$HOME/.saved_dirs"

save() { echo "$1"="$PWD" >> "$SAVED_DIRS"; }
go() { cd "$(grep "^$1=" "$SAVED_DIRS" | cut -d= -f2-)"; }
_list_dirs() { compgen -W "$(cut -d= -f1 "$SAVED_DIRS" 2>/dev/null)" -- "$1"; }
complete -F _list_dirs go

# flutter path hmmm
# update: it actually worked
export PATH="/media/armoire/Everything/Dev/utils/flutter/bin:$PATH"
export CHROME_EXECUTABLE="/usr/bin/chromium"

# steam hmmm
export SDL_VIDEODRIVER=Wayland,x11

. "$HOME/.local/share/../bin/env"
