```bat
:: backup previous configuration and install AstroNvim
if exist "%LOCALAPPDATA%\nvim.bak" ren "%LOCALAPPDATA%\nvim" "%LOCALAPPDATA%\nvim.bak"
if exist "%LOCALAPPDATA%\nvim-data.bak" ren "%LOCALAPPDATA%\nvim-data" "%LOCALAPPDATA%\nvim-data.bak"
git clone --depth 1 https://github.com/AstroNvim/AstroNvim "%LOCALAPPDATA%\nvim"

:: next command runs nvim with no UI to complete AstroNvim setup
nvim --headless -c 'qall'

:: TODO: next commands SHOULD run nvim with no UI to install programmin languages utils
nvim --headless -c 'LspInstall pyright' -c 'qall'
nvim --headless -c 'TSInstall python' -c 'qall'
:: TODO: install ruff (formatter for python)
nvim --headless -c 'LspInstall lua_ls' -c 'qall'
nvim --headless -c 'TSInstall lua' -c 'qall'
:: nvim --headless -c 'MasonInstall stylua' -c 'qall'

:: next command uses this repo as customization of AstroNvim
git clone https://github.com/dlordi/astronvim-user-config "%LOCALAPPDATA%\nvim\lua\user"
```

- https://github.com/AstroNvim/astrocommunity/tree/main
