-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim下python运行窗口设置
--vim.keymap.set({ "n", "i" }, "<A--->", '<Cmd>exe winheight(0)/3."split" | term<CR>')
--vim.keymap.set({ "n", "i" }, "<A-\\>", '<Cmd>exe winwidth(0)/2."vsplit" | term<CR>')
--vim.keymap.set({ "n", "i" }, "<F5>", '<Cmd>exe winheight(0)/3."split" | term python %<CR>')
--vim.keymap.set({ "n", "i" }, "<F6>", '<Cmd>exe winwidth(0)/2."vsplit" | term python %<CR>')

vim.keymap.set({ "n", "i" }, "<F5>", '<Cmd>TermExec cmd="python %"<CR>')

-- corlor-picker keymap
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)

-- telescope keymap
vim.keymap.set(
  "n",
  "<leader>/",
  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { desc = "live grep with args" }
)
