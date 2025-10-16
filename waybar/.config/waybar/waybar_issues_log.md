# Waybar Configuration Issues Log

## Font Size Issues with Workspace Icons

**Problem:** Workspace icon font-size changes don't take effect despite CSS modifications.

**Attempted Solutions:**
1. Standard CSS `font-size` property - ❌ Failed
2. Added `!important` - ❌ CSS parser error
3. Higher CSS specificity (`window#waybar #workspaces button`) - ❌ Failed
4. Increased padding and min-width/height - ❌ Failed
5. Tested with different icon sets (circles ●○) - ❌ Failed
6. Tested with simple text numbers (1,2,3) - ✅ Worked

**Root Cause:** Specific Unicode glyphs (󰲠, 󰲢, etc.) appear to be rendered differently by Waybar, possibly as icon fonts rather than scalable text characters.

**Workaround:** Simple text/numbers respond to font-size changes, but complex Unicode icons do not.

**Current Status:** Using original icons with fixed size, all other functionality (hover, active, urgent states) working properly.

---

## Other Notes
- CSS specificity conflicts common due to global `*` selector setting `font-size: 13px`
- Hover effects require matching specificity levels
- Custom system modules work well for grouping metrics in shared bubbles