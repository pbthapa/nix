local chooseColorScheme = function()
  local hour = os.date("*t").hour
  local colorScheme = "gruvbox"
  if hour >= 0 or hour < 9 then
    colorScheme = "catppuccin"
  elseif hour >= 8 or hour < 16 then
    colorScheme = "rose-pine-moon"
  else
    colorScheme = "tokyonight"
  end
  return colorScheme
end

return {
  { "ellisonleao/gruvbox.nvim", name = "gruvbox", lazy = true },
  { "rose-pine/neovim", name = "rose-pine-moon" },
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
