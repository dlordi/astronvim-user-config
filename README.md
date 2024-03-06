```bat
:: to install AstroNvim in a clean way, either backup previous configuration...
if exist "%LOCALAPPDATA%\nvim.bak" ren "%LOCALAPPDATA%\nvim" "%LOCALAPPDATA%\nvim.bak"
if exist "%LOCALAPPDATA%\nvim-data.bak" ren "%LOCALAPPDATA%\nvim-data" "%LOCALAPPDATA%\nvim-data.bak"

:: ... OR, just wipe it out previous configuration (useful for AstroNvim updates!)
:: rd /S /Q "%LOCALAPPDATA%\nvim" "%LOCALAPPDATA%\nvim-data"

:: now, you can install AstroNvim (clone the repo and run nvim with no UI to download packages)!
git clone --depth 1 https://github.com/AstroNvim/AstroNvim "%LOCALAPPDATA%\nvim"
nvim --headless -c 'qall'

:: next, clone this repo to customize AstroNvim setup (and run again nvim with no UI!)
git clone https://github.com/dlordi/astronvim-user-config "%LOCALAPPDATA%\nvim\lua\user"
nvim --headless -c 'Mason' -c 'qall'
```

- [list of community packages](https://github.com/AstroNvim/astrocommunity/tree/main)

# TODOs

- fix python debugger setup (it cannot find python3)
- replace `null_ls` with `none_ls`
- customize status bar
    - show line ending format in status bar
- enable format on save for markdown files
