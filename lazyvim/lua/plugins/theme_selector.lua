local chooseColorScheme = function()
  local hour = os.date("*t").hour
  local colorScheme = "gruvbox"
  if hour >= 13 and hour < 24 then
    colorScheme = "catppuccin"
  else
    colorScheme = "gruvbox"
  end
  return colorScheme
end

return {
  { "ellisonleao/gruvbox.nvim", name = "gruvbox", lazy = true, opts = {
    transparent_mode = true,
  } },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = chooseColorScheme(),
    },
  },
}
