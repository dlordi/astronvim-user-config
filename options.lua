-- set vim options here (vim.<first_key>.<second_key> = value)
-- return {
--   opt = {
--     -- set to true or false etc.
--     relativenumber = true, -- sets vim.opt.relativenumber
--     number = true, -- sets vim.opt.number
--     spell = false, -- sets vim.opt.spell
--     signcolumn = "auto", -- sets vim.opt.signcolumn to auto
--     wrap = false, -- sets vim.opt.wrap
--   },
--   g = {
--     mapleader = " ", -- sets vim.g.mapleader
--     autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
--     cmp_enabled = true, -- enable completion at start
--     autopairs_enabled = true, -- enable autopairs at start
--     diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
--     icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
--     ui_notifications_enabled = true, -- disable notifications when toggling UI elements
--     resession_enabled = false, -- enable experimental resession.nvim session management (will be default in AstroNvim v4)
--   },
-- }
-- If you need more control, you can use the function()...end notation
return function(local_vim)
  -- local_vim.opt.relativenumber = true
  -- local_vim.g.mapleader = " "
  -- local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
  -- local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
  vim.cmd("lan en_US.UTF-8") -- no translation, always use english messages
  local_vim.opt.whichwrap = "b,s,<,>,[,]" -- wraps left/right moves to previous/next row

  if vim.g.neovide then
    -- local font_name = "SauceCodePro Nerd Font" -- tested both on Windows and MacOS
    local font_name = "JetBrainsMono Nerd Font"
    local font_size = vim.loop.os_uname().sysname == "Windows_NT" and "11" or "14"
    vim.o.guifont = font_name .. ":h" .. font_size

    -- enable MacOS "Command" key
    vim.g.neovide_input_use_logo = 1

    local opts = { noremap = true, silent = true }

    -- enable MacOS system clipboard
    vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", opts)
    vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", opts)
    vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", opts)
    vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", opts)

    -- enable Windows system clipboard
    vim.api.nvim_set_keymap("i", "<C-v>", "<C-R>+", opts)
    vim.api.nvim_set_keymap("!", "<S-Insert>", "<C-R>+", opts)
  end

  local_vim.opt.colorcolumn = "120" -- show columns margins
  local_vim.opt.listchars = { space = "·", tab = "⎯⎯" } -- set symbols for blanks
  local_vim.opt.list = true -- show blanks

  return local_vim
end
