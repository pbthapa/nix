return {
  "mfussenegger/nvim-lint",
  opts = {
    event = { "BufReadPre", "BufNewFile" },
    linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      python = { "pylint" },
    },
  },
}
