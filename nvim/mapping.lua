local M = {}

M.general = {
  n = {
    ["gh"] = { "0", " go to start of line" },
    ["gl"] = { "$", " go to end of line" },
    ["<A-,>"] = { "<C-w>>", "decrease window size vertically" },
    ["<A-.>"] = { "<C-w><", "increase window size vertically" },
    ["<A-'>"] = { 'yiwo/* eslint-disable no-console */<CR>console.log("<Esc>pa: ", <Esc>pa);<Esc>', "Console log the word" },
  },
    i = {
    ["<C-BS>"] = { "<C-w>", "Delete word back" },
    ["<A-'>"] = { '<Esc>yiwo/* eslint-disable no-console */<CR>console.log("<Esc>pa: ", <Esc>pa);<Esc>', "Console log the word" },
  },
}
