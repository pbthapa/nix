return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "onsails/lspkind.nvim",
    "hrsh7th/cmp-cmdline",
  },
  opts = function(_, opts)
    local cmp = require("cmp")
    local mappings = {
      ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
      ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
      ["<CR>"] = cmp.mapping.confirm({ select = false }), -- only to confirm explicitly selected item
    }

    local cmp_format = {
      maxwidth = 50,
      ellipsis_char = "...",
    }

    opts.mapping = cmp.config.mapping.preset.insert(mappings)
    opts.formatting = {
      format = require("lspkind").cmp_format(cmp_format),
    }

    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })

    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        { name = "cmdline" },
      }),
    })
  end,
}
