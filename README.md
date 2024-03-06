```bat
:: to install AstroNvim in a clean way, either backup previous configuration...
if exist "%LOCALAPPDATA%\nvim.bak" ren "%LOCALAPPDATA%\nvim" "%LOCALAPPDATA%\nvim.bak"
if exist "%LOCALAPPDATA%\nvim-data.bak" ren "%LOCALAPPDATA%\nvim-data" "%LOCALAPPDATA%\nvim-data.bak"

:: ... OR, just wipe it out previous configuration (useful for AstroNvim updates!)
:: rd /S /Q "%LOCALAPPDATA%\nvim" "%LOCALAPPDATA%\nvim-data"

:: now, you can install AstroNvim (and run nvim for the first time to donwload required packages!)
git clone --depth 1 https://github.com/AstroNvim/AstroNvim "%LOCALAPPDATA%\nvim"
cd "%LOCALAPPDATA%\nvim" && nvim

:: next, clone this repo to customize AstroNvim setup (and run again nvim to complete customization!)
git clone https://github.com/dlordi/astronvim-user-config "%LOCALAPPDATA%\nvim\lua\user"
cd "%LOCALAPPDATA%\nvim" && nvim
```

- [list of community packages](https://github.com/AstroNvim/astrocommunity/tree/main)

# TODOs

- fix python debugger (`debugpy`) setup: it cannot find `python3`
- replace deprecated `null_ls` with `none_ls`
- customize statusline
    - show line ending format in status bar
- enable format on save for markdown (`.md`) files
