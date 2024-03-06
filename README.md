```bat
:: backup previous configuration and install AstroNvim
if exist "%LOCALAPPDATA%\nvim.bak" ren "%LOCALAPPDATA%\nvim" "%LOCALAPPDATA%\nvim.bak"
if exist "%LOCALAPPDATA%\nvim-data.bak" ren "%LOCALAPPDATA%\nvim-data" "%LOCALAPPDATA%\nvim-data.bak"
git clone --depth 1 https://github.com/AstroNvim/AstroNvim "%LOCALAPPDATA%\nvim"

:: next command runs nvim with no UI to complete AstroNvim setup
nvim --headless -c 'qall'

:: next commands **SHOULD** run nvim with no UI to install programmin languages utils
:: (they **SHOULD** not be required since custom configuration installs them automatically)
:: nvim --headless -c 'LspInstall pyright' -c 'qall'
:: nvim --headless -c 'TSInstall python' -c 'qall'
:: TODO: install ruff (formatter for python)
:: nvim --headless -c 'LspInstall lua_ls' -c 'qall'
:: nvim --headless -c 'TSInstall lua' -c 'qall'
:: nvim --headless -c 'MasonInstall stylua' -c 'qall'

:: next command uses this repo as customization of AstroNvim
git clone https://github.com/dlordi/astronvim-user-config "%LOCALAPPDATA%\nvim\lua\user"

:: next command ensures programmig languages utils get installed!
nvim --headless -c 'Mason' -c 'qall'
```

- [list of community packages](https://github.com/AstroNvim/astrocommunity/tree/main)

# TODOs

- fix python debugger setup (it cannot find python3)
- replace `null_ls` with `none_ls`
- show line ending format in status bar
- format on save markdown files
