#!/bin/bash

# Claude Development Session Script
# Creates a 3-pane tmux layout: Claude (left), Neovim (top-right), Terminal (bottom-right)

SESSION="claude"

# Check if session already exists
if tmux has-session -t "$SESSION" 2>/dev/null; then
    # If already inside tmux, switch to the session
    if [ -n "$TMUX" ]; then
        tmux switch-client -t "$SESSION"
    else
        # Attach to existing session
        tmux attach-session -t "$SESSION"
    fi
    exit 0
fi

# Create new session with the first window (starts with one pane)
tmux new-session -d -s "$SESSION"

# Start claude in the initial pane
tmux send-keys -t "$SESSION" 'claude' C-m

# Split horizontally to create right pane
tmux split-window -h -t "$SESSION"

# Start nvim in the right pane
tmux send-keys -t "$SESSION" 'nvim' C-m

# Split the right pane vertically to create bottom-right terminal pane
tmux split-window -v -t "$SESSION"

# Resize left pane to 80 columns
tmux resize-pane -t "$SESSION:0" -x 80

# Set focus to left pane (Claude)
tmux select-pane -t "$SESSION:0"

# Display setup info
tmux display-message -t "$SESSION" "Claude development session ready: Claude (left), Neovim (top-right), Terminal (bottom-right)"

# Attach to the session
if [ -n "$TMUX" ]; then
    tmux switch-client -t "$SESSION"
else
    tmux attach-session -t "$SESSION"
fi