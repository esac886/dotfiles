i dotfiles

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

- [zsh](https://www.zsh.org/) - `[user@host] pwd >> ` prompt with vi modes indication, autosuggestions, autocompletions
- [nvim](https://github.com/neovim/neovim) - setup with lazyvim (lsp for c, go; oil.nvim; completions and go snippets; treesitter; telescope etc)
- git - aliases, pretty git log with `git l`
- [qutebrowser](https://qutebrowser.org/) - custom dark colorscheme, my keymaps
- [tmux](https://github.com/tmux/tmux/wiki) - custom prefix, colors, also nvim panes integration
- [x11](https://www.x.org/wiki/), [mpv](https://github.com/mpv-player/mpv), [qt6ct](https://github.com/trialuser02/qt6ct)

### dependencies

- zsh
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    - [zsh-system-clipboard](https://github.com/kutsan/zsh-system-clipboard)
- nvim
    - git - for LazyVim
    - wget - for lsp installing
    - unzip - for lsp installing
    - [npm](https://www.npmjs.com/) - for lsp installing
    - [ripgrep](https://github.com/BurntSushi/ripgrep) - for fast `:grep`
- x11
    - [dwm](https://github.com/esac886/dwm) - WM
    - [st](https://github.com/esac886/st) - terminal emulator
    - [dwmblocks](https://github.com/torrinfail/dwmblocks) - for dwm bar easy customization
    - [autorandr](https://github.com/phillipberndt/autorandr) - for automatically applying xrandr settings on startup
    - [feh](https://github.com/derf/feh) - for wallpapers
    - pipewire for audio (pipewire, pipewire-pulse, alsa, alsa-pulse)
- git
    - [moar](https://github.com/walles/moar) - for paging log, diff etc.
- mpv
    - [yt-dlp](https://github.com/yt-dlp/yt-dlp) - for streaming videos from youtube.com

## old

- [i3](https://i3wm.org/) - config that i used earlier for i3 with polybar (dark colorscheme, some keymaps, rofi integration)
- [rofi](https://github.com/davatorium/rofi) - dark colorscheme
- [alacritty](https://alacritty.org/) - dark colorscheme, font, some bindings
