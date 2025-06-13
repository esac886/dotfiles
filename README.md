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

- zsh - `[user@host] pwd >> ` prompt with vi modes indication, autosuggestions, autocompletions
- nvim - setup with lazyvim (lsp for c, go; oil.nvim; completions and go snippets; treesitter; telescope etc)
- qutebrowser - custom dark colorscheme, my keymaps
- x11 - setup
- tmux - custom prefix, colors, also nvim panes integration
- qt6ct - for dark theme in qt apps
- git - aliases, pretty git log with `git l`

### dependencies

- zsh
    - (zsh-autosuggestions)[https://github.com/zsh-users/zsh-autosuggestions]
    - (zsh-system-clipboard)[https://github.com/kutsan/zsh-system-clipboard]
- nvim
    - git - for LazyVim
    - wget - for lsp installing
    - unzip - for lsp installing
    - npm - for lsp installing
    - ripgrep - for fast `:grep`
- x11
    - (dwm)[https://github.com/esac886/dwm] - WM
    - (st)[https://github.com/esac886/st] - terminal emulator
    - (dwmblocks)[https://github.com/torrinfail/dwmblocks] - for dwm bar easy customization
    - (autorandr)[https://github.com/phillipberndt/autorandr] - for automatically applying xrandr settings on startup
    - feh - for wallpapers
    - pipewire for audio (pipewire, pipewire-pulse, alsa, alsa-pulse)
- git
    - moar - for paging log, diff etc.

## old

- i3 - config that i used earlier for i3 with polybar (dark colorscheme, some keymaps, rofi integration)
- rofi - dark colorscheme
- alacritty - dark colorscheme, font, some bindings
