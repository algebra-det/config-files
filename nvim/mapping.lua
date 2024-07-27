---@type MappingsTable
local M = {}

M.disabled = {
  i = {
    ["<C-BS>"] = { "<C-w>", "Delete word back" },
  },
}

M.general = {
  n = {
    ["gh"] = { "0", " go to start of line" },
    ["gl"] = { "$", " go to end of line" },
    ["<A-,>"] = { "<C-w>>", "decrease window size vertically" },
    ["<A-.>"] = { "<C-w><", "increase window size vertically" },
    ["<A-'>"] = { 'yiwo/* eslint-disable no-console */<CR>console.log("<Esc>pa: ", <Esc>pa);<Esc>', "Console log the word" },
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
  i = {
    ["<C-BS>"] = { "<C-w>", "Delete word back" },
    ["<A-'>"] = { '<Esc>lyiwo/* eslint-disable no-console */<CR>console.log("<Esc>pa: ", <Esc>pa);<Esc>', "Console log the word" },
  },
}

-- more keybinds!

return M
