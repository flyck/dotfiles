## Steps

## Restore files from backup

directories:
- ~/Documents
- ~/Videos
- ~/Music
- ~/Pictures

hint: safe time by first restoring an old backup, and then copying the new files
- restore also the ssh key

- restore dropbox

- restore the bookmarks

## Install packages

package-names:
- https://github.com/flyck/mac-dev-playbook/blob/main/default.config.yml#L34

arch-specific:
- eog (eye of gnome, image viewer)

individually distributed:
- bun

## Install browser extensions

see the list in mac-dev-setup

### Arch Linux

```sh
pacman -S <package-name>
```

## Setup IDE (emacs)

- clone my .emacs.d
- start emacs
  - install the fonts
  - make sure typescript IDE works
  - add a list of feature my IDE setup has TODO
  - add a getting started guide to my emacs config TODO
