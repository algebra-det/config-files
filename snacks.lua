return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      picker = {
        -- hidden = true,
        ignored = true,
        layouts = {
          sidebar = {
            layout = {
              position = "right",
              width = 0.25,
            },
          },
        },
      },
      dashboard = {
        preset = {
          header = [[
██╗   ██╗██╗███╗   ███╗
██║   ██║██║████╗ ████║
██║   ██║██║██╔████╔██║
╚██╗ ██╔╝██║██║╚██╔╝██║
 ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═══╝  ╚═╝╚═╝     ╚═╝
   ]],
        },
      },
    },
  },
}
