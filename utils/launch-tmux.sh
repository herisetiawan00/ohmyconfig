if command -v tmux &> /dev/null; then
  if [ -z "$TMUX" ]; then
    tmux attach-session -t default || tmux new-session -s default
    exit
  fi
fi
