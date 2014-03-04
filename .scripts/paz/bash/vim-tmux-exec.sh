TMUX_SESSION='_VIM'
EXEC_CMDS="$@"

if tmux has-session -t "TMUX_SESSION"; then
  tmux attach-session -t "TMUX_SESSION"
else
  tmux new-session -s "TMUX_SESSION"
fi


