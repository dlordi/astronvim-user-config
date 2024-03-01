vim.cmd("lan en_US.UTF-8") -- no translation, always use english
vim.opt.whichwrap = "b,s,<,>,[,]" -- wraps left/right moves to previous/next row

if vim.g.neovide then
  -- local font_name = "SauceCodePro Nerd Font" -- tested both on Windows and MacOS
  local font_name = "JetBrainsMono Nerd Font"
  local font_size = vim.loop.os_uname().sysname == "Windows_NT" and "11" or "14"
  vim.o.guifont = font_name.. ":h" .. font_size

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

return {
  mappings = {
    i = {
      ["<C-s>"] = { "<cmd>:w<cr>", desc = "Save current file (Force Write)" }, 
    },
    -- v = {
    --   K = { ":m '>+1<cr>gv", desc = "Move selection one row up in visual mode" },
    --   I = { ":m '<-2<cr>gv", desc = "Move selection one row down in visual mode" },
    -- },
  },
  options = {
    opt = {
      colorcolumn = "120", -- show columns margins
      listchars = { space = "·", tab = "⎯⎯" }, -- show blanks
      list = true, -- show blanks
    },
  },
  plugins = {
    -- disable unused plugins
    { "goolord/alpha-nvim", enabled = false },
    { "lukas-reineke/indent-blankline.nvim", enabled = false },
  },
}
