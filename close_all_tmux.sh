#!/bin/bash

# Kmux - Kill all panes that are just waiting at a shell.
# TODO: Loop over each window's panes
# TODO: Implement -all 

lastPaneId=$(tmux list-panes | tail -n 1 | sed "s/:.*//")
paneId=0
numClosed=0

while [[ $paneId -le $(($lastPaneId - $numClosed)) ]] ; do
    tmux select-pane -t $paneId
    sleep 0.5
    paneName=$(tmux display -p '#W')
    echo "paneName=$paneName"
    echo "basename=" "$(basename $SHELL)"
    if [[ $paneName == $(basename $SHELL) ]] ; then
        tmux send-keys "^a" # goto start of line
        tmux send-keys "^k" # delete to end of line
        tmux send-keys "exit" "Enter"
        let numClosed++
    else
        let paneId++
    fi
done
exit
