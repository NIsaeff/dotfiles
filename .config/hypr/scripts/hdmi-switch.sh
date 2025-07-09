#!/usr/bin/env bash
# ~/.config/hypr/scripts/hdmi-switch.sh

HYPR_CONF="$HOME/.config/hypr/conf"
MON_SNIPPETS="$HYPR_CONF/monitors"

# detect if HDMI-A-1 is connected
if hyprctl monitors all | grep -q "^Monitor HDMI-A-1"; then
  cp "$MON_SNIPPETS/hdmi-mirror.conf" "$HYPR_CONF/monitor.conf"
else
  cp "$MON_SNIPPETS/default.conf" "$HYPR_CONF/monitor.conf"
fi

# reload Hyprland so it picks up the new monitor.conf
hyprctl reload

