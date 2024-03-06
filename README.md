```bat
:: backup previous configuration for a clean install of AstroNvim!
if exist "%LOCALAPPDATA%\nvim.bak" ren "%LOCALAPPDATA%\nvim" "%LOCALAPPDATA%\nvim.bak"
if exist "%LOCALAPPDATA%\nvim-data.bak" ren "%LOCALAPPDATA%\nvim-data" "%LOCALAPPDATA%\nvim-data.bak"
:: OR, just wipe out previous configuration (useful for AstroNvim updates!)
:: rd /F /Q "%LOCALAPPDATA%\nvim"
:: rd /F /Q "%LOCALAPPDATA%\nvim-data"
git clone --depth 1 https://github.com/AstroNvim/AstroNvim "%LOCALAPPDATA%\nvim"

:: next command runs nvim with no UI to complete AstroNvim setup (only required first time!)
nvim --headless -c 'qall'

:: next command uses this repo to customize AstroNvim installation
git clone https://github.com/dlordi/astronvim-user-config "%LOCALAPPDATA%\nvim\lua\user"

:: next command ensures programming languages packages get installed correctly!
nvim --headless -c 'Mason' -c 'qall'
```

- [list of community packages](https://github.com/AstroNvim/astrocommunity/tree/main)

# TODOs

- fix python debugger setup (it cannot find python3)
- replace `null_ls` with `none_ls`
- customize status bar
    - show line ending format in status bar
- enable format on save for markdown files
