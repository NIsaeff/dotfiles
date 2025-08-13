# Documentation Rules for n8dawg's Environment

## File Location Rules

### Configuration Notes and Documentation
- **Location:** `~/dotfiles/[app-name]/` alongside actual config files
- **NOT:** `~/.config/` (reserved for active config files only)
- **Format:** Markdown files with descriptive names

### Examples
- Hardware configs: `~/dotfiles/niri/mouse-config.md`
- App-specific notes: `~/dotfiles/alacritty/setup-notes.md`
- General docs: `~/dotfiles/DOCUMENTATION_RULES.md`

### Rationale
- Keeps documentation with related configurations
- Version controlled with dotfiles repo
- Cleaner `.config` directory structure
- Easy to reference when working on specific app configs

## Documentation Standards
- Use descriptive filenames with hyphens
- Include hardware details and USB IDs where relevant
- Document user preferences and reasoning
- Include configuration history for complex setups
- Reference related keybindings and alternatives