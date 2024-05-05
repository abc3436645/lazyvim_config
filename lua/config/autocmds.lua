-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

--autoload python virtualenv
vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Auto select virtualenv Nvim open",
  pattern = "*",
  callback = function()
    --local venv = vim.fn.findfile('pyproject.toml', vim.fn.getcwd() .. ';')
    local venv = vim.fn.findfile("setup.py", vim.fn.getcwd() .. ";")
    if venv ~= "" then
      require("venv-selector").retrieve_from_cache()
    end
  end,
  once = true,
})

--vim.api.nvim_create_autocmd({ "TermOpen", "WinEnter" }, {
--  callback = function()
--    if vim.opt.buftype:get() == "terminal" then
--      vim.cmd("set nonu")
--      vim.cmd("set norelativenumber")
--      vim.cmd("startinsert")
--    end
--  end,
--})
