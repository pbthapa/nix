return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "whoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    require("mason-lspconfig").setup({
      automatic_installation = true,
      ensure_installed = {
        "lua_ls",
        "bashls",
        "angularls",
        "cssls",
        "dockerls",
        "html",
        "tsserver",
        "emmet_ls",
        "jsonls",
        "pyright",
        "sqlls",
        "yamlls",
        "jdtls",
        "nil",
      },
    })

    require("mason-tool-installer").setup({
      ensure_installed = {
        "prettier",
        "stylua",
        "isort",
        "black",
        "pylint",
        "eslint_d",
        "google-java-format",
        "nixpkgs-fmt",
      },
    })
  end,
}
