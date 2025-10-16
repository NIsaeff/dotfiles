#!/bin/bash

# Master Pane Directory Synchronization Script
# Syncs opencode pane to the master pane's working directory when it changes

# Get the master pane ID from environment
master_pane=$(tmux show-environment TMUX_MASTER_PANE_ID 2>/dev/null | cut -d= -f2)

# If no master pane is set, try to auto-detect top-right pane (pane 1)
if [ -z "$master_pane" ] || ! tmux list-panes -F "#{pane_id}" | grep -q "$master_pane"; then
    # Get pane 1 (typically top-right in 3-pane layout)
    master_pane=$(tmux list-panes -F "#{pane_id}" | sed -n "2p")
    if [ -n "$master_pane" ]; then
        tmux set-environment TMUX_MASTER_PANE_ID "$master_pane"
    else
        exit 0  # No valid master pane found
    fi
fi

# Get the current directory of the master pane
master_dir=$(tmux display-message -t "$master_pane" -p "#{pane_current_path}" 2>/dev/null)

# Exit if we can't get the master pane directory
[ -z "$master_dir" ] && exit 0

# Get the last known master directory
last_master_dir=$(tmux show-environment TMUX_LAST_MASTER_DIR 2>/dev/null | cut -d= -f2)

# Only proceed if the master directory has actually changed
if [ "$master_dir" != "$last_master_dir" ]; then
    # Update the stored master directory
    tmux set-environment TMUX_LAST_MASTER_DIR "$master_dir"
    
    # Find the opencode pane (pane 0, the left pane)
    opencode_pane=$(tmux list-panes -F "#{pane_id}" | sed -n "1p")
    
    # Only sync if we have an opencode pane and it's not the master pane
    if [ -n "$opencode_pane" ] && [ "$opencode_pane" != "$master_pane" ]; then
        # Get current directory of opencode pane
        current_dir=$(tmux display-message -t "$opencode_pane" -p "#{pane_current_path}" 2>/dev/null)
        
        # Only sync if the directory is different
        if [ "$current_dir" != "$master_dir" ]; then
            # Check if opencode pane is running a command
            pane_command=$(tmux display-message -t "$opencode_pane" -p "#{pane_current_command}" 2>/dev/null)
            
            # Only sync if pane is running a shell or opencode (not vim, less, etc.)
            if [[ "$pane_command" =~ ^(bash|zsh|sh|fish|opencode)$ ]]; then
                tmux send-keys -t "$opencode_pane" "cd \"$master_dir\"" C-m
            fi
        fi
    fi
fi