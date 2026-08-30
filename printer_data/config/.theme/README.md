# Rem & Ram Mainsail Theme

A dark blue/pink Mainsail theme inspired by Rem and Ram from Re:Zero.

## Files
- `custom.css` — theme styling
- `main-background.png` — main dashboard background
- `sidebar-background.png` — sidebar artwork
- `sidebar-logo.png` — Rem & Ram theme logo
- `favicon-16x16.png`
- `favicon-32x32.png`
- `preview.png` — concept preview
- `install.sh` — optional installer

## Install manually

1. In Mainsail, open **Machine → File Manager**.
2. Enable **Show hidden files**.
3. Inside your config directory create:
   `.theme`
4. Upload these files into `~/printer_data/config/.theme/`:
   - custom.css
   - main-background.png
   - sidebar-background.png
   - sidebar-logo.png
   - favicon-16x16.png
   - favicon-32x32.png
5. Hard refresh the browser:
   - Windows/Linux: `Ctrl + Shift + R`
   - macOS: `Cmd + Shift + R`

## Install over SSH

Extract this package somewhere on your Klipper host, `cd` into the extracted folder, then run:

```bash
chmod +x install.sh
./install.sh
```

The installer backs up an existing `.theme` directory before copying the new files.

## Remove

```bash
rm -rf ~/printer_data/config/.theme
```

Then hard-refresh Mainsail.

## Notes

- Designed primarily for Mainsail dark mode.
- If a Mainsail update changes a UI selector, the basic backgrounds/colors will still work, but a small CSS tweak may be needed.
- Character artwork in this package was generated specifically for this personal theme.
