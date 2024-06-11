return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      nil_ls = function()
        --require("lspconfig").nil_ls.setup({
        --  autostart = true,
        --  settings = {
        --    ["nil"] = {
        --      testSetting = 42,
        --      formatting = {
        --        command = { "nixpkgs-fmt" },
        --      },
        --    },
        --  },
        -- })

        require("lspconfig").nixd.setup({})
        return true
      end,
    },
  },
}
