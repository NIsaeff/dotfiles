#!/bin/bash
SESSION="opencode"

# Exit if the session already exists
tmux has-session -t $SESSION 2>/dev/null && exec tmux attach-session -t $SESSION

# If already inside tmux, switch-client; otherwise, attach-session
if [ -n "$TMUX" ]; then
    tmux switch-client -t "$SESSION" 2>/dev/null || {
        tmux new-session -ds "$SESSION"
        tmux switch-client -t "$SESSION"
    }
else
    tmux has-session -t "$SESSION" 2>/dev/null && tmux attach -t "$SESSION" || tmux new-session -s "$SESSION"
fi

# Create session
tmux new-session -d -s $SESSION

# Left pane: Claude or LLM client
tmux send-keys -t $SESSION 'opencode' C-m

# Right pane
tmux split-window -h -t $SESSION
tmux send-keys -t $SESSION:0.1 'nvim' C-m

# Bottom pane on the right
tmux split-window -v -t $SESSION:0.1

# Resize left pane to 80 cols
tmux select-pane -t $SESSION:0.0
tmux resize-pane -x 80

# Attach to the session
tmux attach-session -t $SESSION

