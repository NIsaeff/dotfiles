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

# Adblock configuration with external filter lists
c.content.blocking.enabled = True
c.content.blocking.method = 'both'  # Keep existing setting
c.content.blocking.adblock.lists = [
    # Local filter lists (downloaded in Step 2)
    os.path.expanduser('~/.config/qutebrowser/adblock/lists/easylist.txt'),
    os.path.expanduser('~/.config/qutebrowser/adblock/lists/easyprivacy.txt'),
    os.path.expanduser('~/.config/qutebrowser/adblock/lists/ublock-filters.txt'),
    os.path.expanduser('~/.config/qutebrowser/adblock/lists/ublock-badware.txt'),
    os.path.expanduser('~/.config/qutebrowser/adblock/lists/youtube-specific.txt'),
    os.path.expanduser('~/.config/qutebrowser/adblock/lists/fanboy-annoyances.txt'),
    
    # Online filter lists (auto-updated) 
    'https://easylist.to/easylist/easylist.txt',
    'https://easylist.to/easylist/easyprivacy.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/badware.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/annoyances.txt',
    'https://secure.fanboy.co.nz/fanboy-annoyance.txt',
]

# Adblock performance settings (optimized for your 13GB RAM)
c.content.blocking.whitelist = []  # No whitelist by default
c.content.blocking.hosts.lists = [
    'https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts'
]

# Additional privacy settings to complement adblock
c.content.headers.do_not_track = True
c.content.headers.referer = 'same-domain'
c.content.cookies.accept = 'no-3rdparty'
c.content.webgl = False  # Disable WebGL for privacy/security

# YouTube-specific optimizations for ad blocking  
c.content.canvas_reading = False  # Prevent canvas fingerprinting (used by ads)
c.content.webrtc_ip_handling_policy = 'default-public-interface-only'

# Key bindings for adblock control
config.bind(',a', 'config-cycle content.blocking.enabled ;; reload')
config.bind(',u', 'spawn --userscript /home/n8dawg/.local/bin/youtube-adblock-toggle')
config.bind(',g', 'greasemonkey-reload')  # Reload greasemonkey scripts
config.bind(',y', 'spawn /home/n8dawg/.local/bin/youtube-alternatives invidious {url}')  # Open in Invidious

# Enhanced adblock features from BreadOnPenguins config
# Add additional uBlock Origin filter lists for comprehensive blocking
c.content.blocking.adblock.lists.extend([
    # Additional uBlock Origin filters for better coverage
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2020.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2021.txt', 
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2022.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2023.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2024.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/privacy.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/annoyances-cookies.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/annoyances-others.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/quick-fixes.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/resource-abuse.txt',
    'https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/unbreak.txt',
    # YouTube specific ad blocking
    'https://raw.githubusercontent.com/ewpratten/youtube_ad_blocklist/master/blocklist.txt',
])

# Enhanced privacy settings for better ad blocking
c.content.blocking.enabled = True
c.content.blocking.method = 'adblock'  # Use python-adblock for best performance
c.content.javascript.can_open_tabs_automatically = False  # Prevent popup ads
c.content.javascript.can_close_tabs = False  # Prevent malicious tab closing

# Additional keybinding for toggling JavaScript (useful for troubleshooting)
config.bind(',j', 'config-cycle content.javascript.enabled ;; reload')
