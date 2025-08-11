# Qutebrowser configuration for Nathaniel's dotfiles
# Compatible with Wayland/Niri setup

import os
from qutebrowser.config.configfiles import ConfigAPI
from qutebrowser.config.config import ConfigContainer

config: ConfigAPI = config  # type: ignore
c: ConfigContainer = c  # type: ignore

# Load autoconfig (GUI settings)
config.load_autoconfig()

# General settings
c.confirm_quit = ['downloads']
c.auto_save.session = True
c.session.lazy_restore = True

# Content settings optimized for low memory
c.content.autoplay = False
c.content.canvas_reading = False
c.content.geolocation = 'ask'
c.content.headers.accept_language = 'en-US,en;q=0.9'
c.content.javascript.enabled = True
c.content.notifications.enabled = 'ask'
c.content.pdfjs = True

# Memory optimization
c.content.prefers_reduced_motion = True
c.content.blocking.method = 'both'  # Use built-in + hosts blocking

# Wayland-specific settings
c.qt.force_platform = None  # Auto-detect (Wayland preferred)
c.qt.highdpi = True  # For your 2240x1400 display

# Downloads
c.downloads.location.directory = os.path.expanduser('~/Downloads')
c.downloads.location.prompt = False
c.downloads.remove_finished = 3000  # Remove after 3 seconds

# Tabs (memory management)
c.tabs.background = True
c.tabs.last_close = 'close'
c.tabs.position = 'top'
c.tabs.select_on_remove = 'next'
c.tabs.undo_stack_size = 10  # Limit undo history

# Font configuration (matches your system)
c.fonts.default_family = 'monospace'
c.fonts.default_size = '11pt'
c.fonts.web.family.standard = 'sans-serif'
c.fonts.web.family.serif = 'serif'
c.fonts.web.family.sans_serif = 'sans-serif'
c.fonts.web.family.fixed = 'monospace'

# Dark theme (matches Adwaita-dark)
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = 'never'
c.colors.webpage.bg = '#1e1e1e'

# Key bindings (Vim-like, matching your Neovim workflow)
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.bind('d', 'tab-close')
config.bind('u', 'undo')
config.bind('r', 'reload')
config.bind('R', 'reload -f')
config.bind('gi', 'hint inputs --first')
config.bind('gf', 'view-source')
config.bind('gd', 'download')
config.bind('gt', 'set-cmd-text -s :tab-select')
config.bind('go', 'set-cmd-text :open {url:pretty}')
config.bind('gO', 'set-cmd-text :open -t {url:pretty}')

# Additional useful bindings
config.bind(',p', 'config-cycle content.plugins ;; reload')
config.bind(',j', 'config-cycle content.javascript.enabled ;; reload')
config.bind(',i', 'config-cycle content.images ;; reload')

# Search engines
c.url.searchengines = {
    'DEFAULT': 'https://duckduckgo.com/?q={}',
    'g': 'https://google.com/search?q={}',
    'gh': 'https://github.com/search?q={}',
    'aw': 'https://wiki.archlinux.org/index.php?search={}',
    'aur': 'https://aur.archlinux.org/packages/?K={}',
    'py': 'https://docs.python.org/3/search.html?q={}',
}

# Start page
c.url.start_pages = 'about:blank'
c.url.default_page = 'about:blank'
