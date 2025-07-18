# some sets
config.load_autoconfig(False)
config.set('auto_save.session', True)
config.set('content.proxy', 'socks://127.0.0.1:12334')
config.set('statusbar.show', 'always')
config.set('content.autoplay', False)
config.set('content.pdfjs', True)

config.set('colors.webpage.preferred_color_scheme', 'dark')
config.set('colors.webpage.darkmode.enabled', False)

## keybindings
config.bind('gp', 'config-cycle --print --temp content.proxy socks://127.0.0.1:12334 none')
config.bind('so', 'config-source')
config.bind('<escape>', 'mode-leave', mode='passthrough')

config.bind('<Ctrl-h>', 'tab-move -')
config.bind('<Ctrl-l>', 'tab-move +')
config.bind('<Shift-Tab>', 'completion-item-focus prev', mode='command')
config.bind('<Shift-Tab>', 'completion-item-focus prev', mode='prompt')

config.bind('gy', "message-info 'spawning mpv for playing {title}' ;; spawn mpv {url}")

## search
c.url.default_page = 'search.brave.com'
c.url.searchengines = {
        'DEFAULT': 'https://search.brave.com/search?q={}',
        '!go': 'https://www.google.com/search?q={}',
        '!ya': 'https://yandex.com/search?text={}',
        '!yt': 'https://www.youtube.com/results?search_query={}',
        '!en': 'https://translate.google.com/?sl=en&tl=ru&text={}&op=translate',
        '!ru': 'https://translate.google.com/?sl=ru&tl=en&text={}&op=translate',
        '!dc': 'https://dictionary.cambridge.org/dictionary/english-russian/{}',
        '!wiki': 'https://en.wikipedia.org/w/index.php?title=Special:Search&search={}',
        }
c.completion.open_categories = ['history']

## privacy
config.set('content.webgl', True, '*')
# config.set('content.canvas_reading', False)
config.set('content.canvas_reading', True)
config.set('content.geolocation', False)
config.set('content.webrtc_ip_handling_policy', 'default-public-interface-only')
# config.set('content.cookies.accept', 'all')
config.set('content.cookies.accept', 'no-3rdparty')
config.set('content.cookies.store', True)


## adblock
c.content.blocking.enabled = True
config.set('content.blocking.method', 'both') # requires python-adblock
c.content.blocking.adblock.lists = [
        "https://easylist.to/easylist/easylist.txt",
        "https://easylist.to/easylist/easyprivacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/legacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2021.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2022.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2023.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2024.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badware.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances-cookies.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances-others.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/quick-fixes.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt",
        "https://easylist.to/easylist/fanboy-annoyance.txt",
        "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt",
        "https://secure.fanboy.co.nz/fanboy-annoyance.txt",
]

## appearance
# tabs
c.tabs.show = 'always'
c.tabs.position = 'top'
c.tabs.padding = {'top': 5, 'bottom': 5, 'left': 9, 'right': 9}
c.tabs.indicator.width = 0 # no tab indicators
c.tabs.width = '7%'
# fonts
c.fonts.default_family = []
c.fonts.default_size = '12pt'

# colors
background = '#1c1c1c'
background2 = '#242424'
foreground = '#bcbcbc'
highlight =  '#ffffff'

c.colors.statusbar.normal.bg = background
c.colors.statusbar.normal.fg = foreground

c.colors.statusbar.command.bg = background
c.colors.statusbar.command.fg = foreground

c.colors.statusbar.insert.bg = background
c.colors.statusbar.insert.fg = foreground

c.colors.statusbar.passthrough.bg = background
c.colors.statusbar.passthrough.fg = foreground

c.colors.statusbar.private.bg = background
c.colors.statusbar.private.fg = foreground
 
c.colors.statusbar.passthrough.fg = foreground
c.colors.statusbar.url.fg = '#80A267'
c.colors.statusbar.url.success.https.fg = '#add6e8'
c.colors.statusbar.url.hover.fg = '#add6e8'

c.colors.tabs.odd.bg = background
c.colors.tabs.even.bg = background
c.colors.tabs.pinned.odd.bg = background
c.colors.tabs.pinned.odd.fg = background
c.colors.tabs.pinned.even.bg = background
c.colors.tabs.pinned.even.fg = background
c.colors.tabs.bar.bg = background
c.colors.tabs.even.fg = foreground
c.colors.tabs.odd.fg = foreground
c.colors.tabs.selected.even.bg = background2
c.colors.tabs.selected.odd.bg = background2
c.colors.tabs.selected.even.fg = highlight
c.colors.tabs.selected.odd.fg = highlight
c.colors.tabs.pinned.selected.even.bg = background2
c.colors.tabs.pinned.selected.odd.bg = background2
c.colors.tabs.pinned.selected.even.fg = highlight
c.colors.tabs.pinned.selected.odd.fg = highlight

c.colors.keyhint.bg = background
c.colors.keyhint.bg = background
c.colors.hints.bg = background
c.colors.hints.fg = foreground
c.hints.border = foreground

c.colors.completion.odd.bg = background
c.colors.completion.even.bg = background
c.colors.completion.fg = foreground
c.colors.completion.category.bg = background
c.colors.completion.category.fg = foreground
c.colors.completion.item.selected.bg = background
c.colors.completion.item.selected.fg = foreground

c.colors.messages.info.bg = background
c.colors.messages.info.fg = foreground
c.colors.messages.error.bg = background
c.colors.messages.error.fg = foreground

c.colors.downloads.bar.bg = background
c.colors.downloads.start.bg = '#72a4d4'
c.colors.downloads.start.fg = background
c.colors.downloads.stop.bg = '#72d4a4'
c.colors.downloads.stop.fg = background
c.colors.downloads.error.bg = background
c.colors.downloads.error.fg = foreground

c.colors.prompts.bg = background
c.colors.prompts.fg = foreground
c.colors.prompts.border = foreground

c.colors.tooltip.bg = background
c.colors.tooltip.fg = foreground
c.colors.contextmenu.menu.bg = background
c.colors.contextmenu.menu.fg = foreground
