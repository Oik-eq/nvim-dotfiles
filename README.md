# Dependencies
```
scoop install fd ripgrep neovim neovide nodejs lua-language-server
npm install -g pyright
```

GitBash should be installed (`C:\Program Files\Git` ; `./lua/plugins/toggle-term.lua` to update path).

To support lang download and add to path the following server: [ltex-ls Windows x64](https://github.com/valentjn/ltex-ls/releases/download/16.0.0/ltex-ls-16.0.0-windows-x64.zip)
([ltex-ls GitHub](https://github.com/valentjn/ltex-ls))


# Font
Currently using [FiraMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraMono.zip) ; Other fonts: [Nerd Fonts](https://www.nerdfonts.com/font-downloads)

To change font / font size `./lua/settings.lua`

# Installation

Place the config files in `C:\Users\<USER>\AppData\Local\nvim\`.
It maybe necessary to launch a few times `neovide` to install plugins.
