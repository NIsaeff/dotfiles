# Logitech MX Master Configuration for niri

## Hardware
- **Device:** Logitech MX Master (via Logi Bolt Receiver - USB ID 046d:c548)
- **Connection:** USB receiver detected as "Logi Bolt Receiver"

## Horizontal Scroll Wheel Configuration

### Current Setup (in config.kdl)
```kdl
// Horizontal scroll for column navigation (with modifier)
Mod+WheelScrollLeft { focus-column-right; }
Mod+WheelScrollRight { focus-column-left; }
```

### Behavior
- **Super + horizontal scroll left** → Focus column to the right
- **Super + horizontal scroll right** → Focus column to the left
- **Regular horizontal scroll** → Works normally in applications (not captured by niri)
- **Regular vertical scroll** → Works normally in applications

### User Preference Notes
- User prefers **reversed** horizontal scroll direction for column navigation
- Requires **Super key modifier** to avoid interfering with application scrolling
- Maps to existing keyboard shortcuts: `Mod+H` (left) and `Mod+L` (right)

### Configuration History
1. Initially tried without modifier - broke application scrolling
2. Added modifier to preserve app functionality
3. Reversed left/right direction per user preference

## Related Bindings
```kdl
// Vertical scroll workspace switching
Mod+WheelScrollDown { focus-workspace-down; }
Mod+WheelScrollUp { focus-workspace-up; }

// Keyboard equivalents
Mod+H { focus-column-left; }
Mod+L { focus-column-right; }
```