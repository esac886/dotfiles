# dotfiles

this repo contains configs for things that I used to use or using now

## how to use

to apply config you need to use GNU stow. For example:

```shell
$ git clone https://github.com/esac886/dotfiles
$ cd dotfiles
$ stow -t ~ zsh
```

it'll create symlink for zsh config inside home. you can apply on top of it every stow module you want.

## important

- zsh - autosuggestions, autocompletions
- nvim - setup with lazyvim
- qutebrowser - custom dark colorscheme, my keymaps
- x11 - setup with autorandr, feh, dwmblocks and dwm.
- tmux - custom prefix, colors, also nvim panes integration
- qt6ct - for dark theme in qt apps

## old

- i3 - config that i used earlier for i3 with polybar (dark colorscheme, some keymaps, rofi integration)
- rofi - dark colorscheme
- alacritty - dark colorscheme, font, some bindings
