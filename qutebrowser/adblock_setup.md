# Qutebrowser Enhanced Adblocking Setup

## Features Implemented

### 1. Python-Adblock Integration
- Using `python-adblock` package for optimal performance
- Method set to `adblock` for best blocking efficiency

### 2. Comprehensive Filter Lists
- **EasyList & EasyPrivacy**: Standard web ad blocking
- **uBlock Origin filters**: Complete yearly filter sets (2020-2024)
- **Privacy filters**: Block tracking, cookies, and fingerprinting
- **Annoyances filters**: Remove cookie banners, social widgets
- **YouTube specific**: Dedicated YouTube ad blocking lists
- **Quick fixes & unbreak**: Fix issues caused by blocking

### 3. Greasemonkey Script
- **YouTube Ad Skipper**: Automatically skips ads and speeds them up
- **Location**: `~/.config/qutebrowser/greasemonkey/youtube-ad-skipper.js`
- **Features**: Auto-skip, ad removal, 16x speed-up, muting

### 4. Privacy Enhancements
- Disabled WebGL and canvas reading
- Third-party cookie blocking
- Do Not Track headers
- WebRTC IP leak protection
- JavaScript popup/tab protection

## Keybindings

| Key | Action |
|-----|--------|
| `,a` | Toggle adblock on/off + reload |
| `,j` | Toggle JavaScript on/off + reload |
| `,g` | Reload greasemonkey scripts |
| `,u` | YouTube adblock toggle script |
| `,y` | Open current URL in Invidious |

## Performance Notes

- Optimized for your 13GB RAM system
- Uses local + online filter lists for redundancy
- Automatic filter updates from online sources
- Minimal performance impact with python-adblock

## Troubleshooting

If a site breaks due to aggressive blocking:
1. Press `,a` to temporarily disable adblock
2. Press `,j` to enable JavaScript if needed
3. Whitelist specific sites in qutebrowser settings if permanent exception needed

## Effectiveness

This setup provides comprehensive ad blocking comparable to uBlock Origin in Firefox/Chrome, specifically optimized for your EndeavourOS + Niri + Qutebrowser setup.