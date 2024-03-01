
```bat
:: backup previous configuration and install AstroNvim
if exist "%LOCALAPPDATA%\nvim.bak" ren "%LOCALAPPDATA%\nvim" "%LOCALAPPDATA%\nvim.bak"
if exist "%LOCALAPPDATA%\nvim-data.bak" ren "%LOCALAPPDATA%\nvim-data" "%LOCALAPPDATA%\nvim-data.bak"
git clone --depth 1 https://github.com/AstroNvim/AstroNvim "%LOCALAPPDATA%\nvim"

:: next command runs nvim with no UI to complete AstroNvim setup
nvim --headless -c 'qall'

:: next commands runs nvim with no UI to install python utilities
nvim -c 'LspInstall pyright' -c 'qall'
nvim -c 'TSInstall python' -c 'qall'

:: next command uses this repo as customization of AstroNvim
git clone https://github.com/dlordi/astronvim-custom-config "%LOCALAPPDATA%\nvim\lua\user"
```
