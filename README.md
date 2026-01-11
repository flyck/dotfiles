# dotfiles

This contains all the dotfiles I'd place under ~/ on a system I use frequently. To do so, I use
[GNU Stow](https://www.gnu.org/software/stow/) to manage dotfiles as symlinks. I try to keep my
dotfiles lightweight so they run on alot of machines.

See how I have a seperate repository for my [emacs dotfiles](https://github.com/flyck/.emacs.d),
just because I love it so much.  Also it is not lightweight. It is fat like big mama. Everybody
loves big mama :)

## How to use

Navigate to the dotfiles directory and use stow to install configs:

```bash
cd ~/git/dotfiles

# Install a config package (creates symlinks)
stow zsh

# Specify target directory explicitly (useful if not in parent of home)
stow -t ~ hypr

# Install multiple packages at once
stow zsh screen hypr vim

# Install all available configs
stow */

# Remove a config (deletes symlinks)
stow -D zsh

# Reinstall (useful after updating files)
stow -R zsh
```

## Important Notes

**Before stowing:** GNU Stow will fail if files already exist at the target location and aren't symlinks. You have two options:

1. **Backup and remove existing configs** (recommended):
   ```bash
   # Backup your current config
   mv ~/.config/hypr ~/.config/hypr.backup.$(date +%s)

   # Then stow
   stow hypr
   ```

2. **Use --adopt to merge** (use with caution):
   ```bash
   # This will move existing files into your dotfiles repo
   stow --adopt hypr

   # Review changes with git diff, then either commit or revert
   git diff
   ```

**Hyprland verification and reload:**
- Verify your config before applying: `Hyprland --verify-config`
- Hyprland automatically reloads when config files change
- Manual reload: `hyprctl reload`
- After stowing hypr configs, run `hyprctl reload` to apply changes
