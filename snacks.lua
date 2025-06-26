return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      picker = {
        sources = {
          projects = {
            dev = {
              "~/documents/qsys/qrem/",
              -- "~/documents/qsys/qrem/azure-agent-wad/",
              -- "~/documents/qsys/qrem/azure-analytics-api/",
              -- "~/documents/qsys/qrem/qrem-user-composite/",
              -- "~/documents/qsys/qrem/qrem-beta/",
            },
          },
        },
        layouts = {
          width = 1,
          min_width = 80,
          telescope = {
            width = 1,
            min_width = 80,
          },
          -- { win = "preview", title = "{preview}", border = "rounded", width = 0.4 },
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
