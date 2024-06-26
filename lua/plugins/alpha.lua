return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local status_ok, alpha = pcall(require, "alpha")
    if not status_ok then
      return
    end

    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("f", "Find file", ":Telescope find_files <CR>"),
      dashboard.button("n", "New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("w", "Find word", ":Telescope live_grep <CR>"),
      dashboard.button("r", "Recent", ":Telescope oldfiles<CR>"),
      dashboard.button("m", "Mason", ":Mason<CR>"),
      dashboard.button("l", "Lazy", ":Lazy<CR>"),
      dashboard.button("u", "Update plugins", "<cmd>lua require('lazy').sync()<CR>"),
      dashboard.button("q", "Quit NVIM", ":qa<CR>"),
    }

    local function footer()
      return "Hax0r life"
    end

    dashboard.section.footer.val = footer()

    dashboard.section.footer.opts.hl = "Type"
    dashboard.section.header.opts.hl = "Include"
    dashboard.section.buttons.opts.hl = "Keyword"

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)
  end,
}
