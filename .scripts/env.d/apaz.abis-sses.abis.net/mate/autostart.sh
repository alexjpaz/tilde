CMD="tmux new-session -d -s"
${CMD} "BREAK"
${CMD} "W2"
${CMD} "W3"
${CMD} "W4"
${CMD} "W5"

mate-terminal -e 'tmux attach -t BREAK' --title='BREAK';wmctrl -r BREAK -t 11
mate-terminal -e 'tmux attach -t W2' --title='W2';wmctrl -r 'W2' -t 1
mate-terminal -e 'tmux attach -t W4' --title='W4';wmctrl -r 'W4' -t 3;wmctrl -r 'W4' -b toggle,fullscreen

