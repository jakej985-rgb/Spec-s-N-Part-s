# Widgets

---

## Common UI Widgets

### Button
- Primary: Blue background, white text, 48px min height
- Secondary: Gray background, dark text
- Tertiary: No background, text-only (underline on hover)
- Destructive: Red background (for delete actions)
- Disabled: Gray, no interaction, opacity 50%
- Loading state: spinner inside button, text hidden

### Input Field
- 40px min height, 12px padding
- Border: 1px gray, blue on focus
- Placeholder text: gray, 60% opacity
- Error state: red border, error message below
- Read-only: light gray background, no editing

### Card
- 8px border radius, 16px padding
- Light shadow (0 2px 4px rgba black 10%)
- Hover state: slightly elevated shadow
- Selected state: blue border, blue shadow

### Dialog / Modal
- Centered on screen
- Semi-transparent overlay (#000 50% opacity)
- Card with 24px padding
- Dismissible via X button or outside tap (unless critical)

### List
- List item: 16px padding, 1px divider between items
- Avatar (if present): 40x40px, 8px margin
- Title: 16px / 600
- Subtitle: 14px / 400 gray
- Trailing action (arrow, button): right-aligned

### Tabs
- Tab bar: full width, bottom border or underline on active
- Active: blue color, underline or background
- Inactive: gray, no styling
- Swipe to switch (mobile)

### Sheet (Bottom Sheet)
- Slides up from bottom
- 16px corner radius on top
- Handle bar (3px wide, gray) at top center
- Dimmed background behind

### Navigation Bar (Bottom Tab Bar)
- Fixed at bottom, safe-area aware
- Icons + labels, 56px height
- Active: blue icon/text
- Inactive: gray icon/text

### Chip / Tag
- Inline label with optional close button
- 4px border radius, 8px horizontal padding
- Use for: categories, selected filters, labels

### Progress Bar / Indicator
- 4px height (thin)
- Blue foreground, light gray background
- Shows percentage or indeterminate (animated stripes)

### Loading Skeleton
- Placeholder while content loads
- Light gray shimmer animation
- Matches content shape (card, list item, etc.)

---

## States
- Default: standard appearance
- Hover (desktop): slightly raised, shadow
- Active/Pressed: darker color, inset
- Disabled: gray, opacity 50%, no interaction
- Focus (keyboard): blue outline, 2px
- Loading: spinner, text grayed
- Error: red border/icon, error message
- Success: green checkmark, confirmation message

---

## Spacing & Sizing
- Button: 48px height, 16px padding
- Input: 40px height, 12px padding
- Icon: 24px (24x24px)
- Card: 16px padding
- List item: 16px vertical padding, 16px horizontal padding

---

## Animations
- Fade in: 200ms ease-in
- Slide up: 300ms ease-out
- Transition colors: 150ms ease-in-out

---

## Accessibility
- All interactive elements keyboard-accessible
- Focus states visible (blue outline)
- Color + icon for status (not just color)
- Sufficient touch target size (48px minimum)

---

## Future Ideas
- Gesture actions (swipe, long-press)
- Haptic feedback on button press
- Voice-over compatible labels for all widgets

---
