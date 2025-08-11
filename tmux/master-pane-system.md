# Master Pane System for Claude Development

This system allows Claude Code to sync its current directory and virtual environment to a designated "master pane" in tmux.

## Key Bindings

### Master Pane Controls
- **Ctrl+Y** - Sync current directory and virtual environment from current pane to master pane
- **Prefix+M** - Set current pane as master pane
- **Prefix+D** - Auto-set top-right pane as master pane (useful for development layouts)

### Navigation (unchanged)
- **Ctrl+h/j/k/l** - Smart pane navigation (vim-aware)
- **Ctrl+←/→/↑/↓** - Pane resizing

## Development Script

### claude-tmux.sh
Creates a 3-pane development layout:
- **Left pane (80 cols)**: Claude Code (`claude` command)
- **Top-right pane**: Neovim (`nvim`)
- **Bottom-right pane**: Terminal
- **Master pane**: Automatically set to top-right pane

```bash
./dotfiles/tmux/claude-tmux.sh    # Start Claude development session
```

## How the Sync System Works

### Directory Sync
When you press **Ctrl+Y** from any pane, it:
1. Gets current directory from the active pane
2. Sends `cd "current_directory"` to the master pane

### Virtual Environment Sync
Automatically detects and syncs:
- **Python venv**: Activates with `source $VIRTUAL_ENV/bin/activate`
- **Conda environments**: Activates with `conda activate $env_name`

### Master Pane Selection
- Default: Top-right pane (pane 1) in 3-pane layouts
- Manual: Use **Prefix+M** to set any pane as master
- Auto: Use **Prefix+D** to auto-select top-right pane

## Typical Workflow

1. Start development session: `./dotfiles/tmux/claude-tmux.sh`
2. Master pane is automatically set to top-right (Neovim pane)
3. Work in Claude (left pane), navigate directories, activate virtual environments
4. Press **Ctrl+Y** to sync location/environment to master pane
5. Switch to master pane to run commands in the synced environment

## Configuration Location

All settings are in `/home/n8dawg/dotfiles/tmux/tmux.conf` under the "MASTER PANE SYSTEM" section.

## Session Handling

The claude-tmux.sh script includes smart session handling:
- Attaches to existing session if available
- Handles nested tmux sessions properly
- Creates new session with proper pane layout if needed