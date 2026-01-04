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

# Install multiple packages
stow zsh screen hypr

# Remove a config (deletes symlinks)
stow -D zsh

# Reinstall (useful after updating files)
stow -R zsh
```
