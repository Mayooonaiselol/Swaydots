config.load_autoconfig(False)

c.qt.force_software_rendering = 'qt-quick'

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')

config.set('content.cookies.accept', 'all', 'devtools://*')

config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

config.set('content.images', True, 'chrome-devtools://*')

config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')
c.url.default_page = 'file:///home/mayo/DIY_startpage/DIY_startpage.html'
c.url.start_pages = 'file:///home/mayo/DIY_startpage/DIY_startpage.html'
c.colors.completion.fg = '#abb2bf'
c.colors.completion.odd.bg = '#12151d'
c.colors.completion.even.bg = '#12151d'
c.colors.completion.category.fg = '#e5c07b'
c.colors.completion.category.bg = '#12151d'
c.colors.completion.category.border.top = '#12151d'
c.colors.completion.category.border.bottom = '#12151d'
c.colors.completion.item.selected.fg = '#abb2bf'
c.colors.completion.item.selected.bg = '#1e2330'
c.colors.completion.item.selected.border.top = '#1e2330'
c.colors.completion.item.selected.border.bottom = '#1e2330'
c.colors.completion.item.selected.match.fg = '#98c379'
c.colors.completion.match.fg = '#98c379'
c.colors.completion.scrollbar.fg = '#abb2bf'
c.colors.completion.scrollbar.bg = '#12151d'
c.colors.contextmenu.menu.bg = '#12151d'
c.colors.contextmenu.menu.fg = '#abb2bf'
c.colors.contextmenu.selected.bg = '#1e2330'
c.colors.contextmenu.selected.fg = '#abb2bf'
c.colors.contextmenu.disabled.bg = '#12151d'
c.colors.contextmenu.disabled.fg = '#565c64'
c.colors.downloads.bar.bg = '#12151d'
c.colors.downloads.start.fg = '#12151d'
c.colors.downloads.start.bg = '#61afef'
c.colors.downloads.stop.fg = '#12151d'
c.colors.downloads.stop.bg = '#56b6c2'
c.colors.downloads.error.fg = '#e06c75'
c.colors.hints.fg = '#12151d'
c.colors.hints.bg = '#e5c07b'
c.colors.hints.match.fg = '#abb2bf'
c.colors.keyhint.fg = '#abb2bf'
c.colors.keyhint.suffix.fg = '#abb2bf'
c.colors.keyhint.bg = '#12151d'
c.colors.messages.error.fg = '#12151d'
c.colors.messages.error.bg = '#e06c75'
c.colors.messages.error.border = '#e06c75'
c.colors.messages.warning.fg = '#12151d'
c.colors.messages.warning.bg = '#c678dd'
c.colors.messages.warning.border = '#c678dd'
c.colors.messages.info.fg = '#abb2bf'
c.colors.messages.info.bg = '#12151d'
c.colors.messages.info.border = '#12151d'
c.colors.prompts.fg = '#abb2bf'
c.colors.prompts.border = '#12151d'
c.colors.prompts.bg = '#12151d'
c.colors.prompts.selected.fg = '#abb2bf'

# Background color for the selected item in filename prompts.
# Type: QssColor
c.colors.prompts.selected.bg = '#1e2330'

# Foreground color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.fg = '#98c379'

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = '#12151d'

# Foreground color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.fg = '#12151d'

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = '#61afef'

# Foreground color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.fg = '#12151d'

# Background color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.bg = '#56b6c2'

# Foreground color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.fg = '#12151d'
c.colors.statusbar.private.bg = '#12151d'
c.colors.statusbar.command.fg = '#abb2bf'
c.colors.statusbar.command.bg = '#12151d'
c.colors.statusbar.command.private.fg = '#abb2bf'
c.colors.statusbar.command.private.bg = '#12151d'
c.colors.statusbar.caret.fg = '#12151d'
c.colors.statusbar.caret.bg = '#c678dd'
c.colors.statusbar.caret.selection.fg = '#12151d'
c.colors.statusbar.caret.selection.bg = '#61afef'
c.colors.statusbar.progress.bg = '#61afef'
c.colors.statusbar.url.fg = '#abb2bf'
c.colors.statusbar.url.error.fg = '#e06c75'
c.colors.statusbar.url.hover.fg = '#abb2bf'
c.colors.statusbar.url.success.http.fg = '#56b6c2'
c.colors.statusbar.url.success.https.fg = '#98c379'
c.colors.statusbar.url.warn.fg = '#c678dd'

c.colors.tabs.bar.bg = '#12151d'
c.colors.tabs.indicator.start = '#61afef'
c.colors.tabs.indicator.stop = '#56b6c2'
c.colors.tabs.indicator.error = '#e06c75'
c.colors.tabs.odd.fg = '#abb2bf'
c.colors.tabs.odd.bg = '#12151d'
c.colors.tabs.even.fg = '#abb2bf'
c.colors.tabs.even.bg = '#12151d'
c.colors.tabs.selected.odd.fg = '#abb2bf'
c.colors.tabs.selected.odd.bg = '#1e2330'
c.colors.tabs.selected.even.fg = '#abb2bf'
c.colors.tabs.selected.even.bg = '#1e2330'
c.colors.tabs.pinned.odd.fg = '#c8ccd4'
c.colors.tabs.pinned.odd.bg = '#98c379'
c.colors.tabs.pinned.even.fg = '#c8ccd4'
c.colors.tabs.pinned.even.bg = '#56b6c2'
c.colors.tabs.pinned.selected.odd.fg = '#abb2bf'
c.colors.tabs.pinned.selected.odd.bg = '#1e2330'
c.colors.tabs.pinned.selected.even.fg = '#abb2bf'
c.colors.tabs.pinned.selected.even.bg = '#1e2330'
c.colors.webpage.darkmode.enabled = True
c.fonts.default_family = 'Iosevka Fixed Extended'

# Bindings for normal mode
config.bind('Z', 'hint links spawn alacritty -e youtube-dl {hint-url}')
config.bind('pv', 'hint links spawn mpv {hint-url}')
config.bind('t', 'set-cmd-text -s :open -t')
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')
