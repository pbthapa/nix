local opts = {
  filetypes = { "*", css = { css = true }, sass = { css = true } },
  user_default_options = {
    names = false,
    mode = "virtualtext",
  },
}

return {
  "NvChad/nvim-colorizer.lua",
  event = { "BufReadPre", "BufNewFile" },
  opts = opts,
}
