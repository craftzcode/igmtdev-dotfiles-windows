-- Pull in the wezterm API
local wezterm = require "wezterm"

-- This will hold the configuration
-- local config = wezterm.config_builder()

-- Default Shell
-- default_prog = {"pwsh"}

-- Font
-- config.font = wezterm.font "Hack Nerd Font Mono"
-- config.font_size = 19

-- Tab
-- config.enable_tab_bar = false

-- Window Decorations
-- config.window_decorations = "RESIZE"

-- return config

return {
  -- Default Shell
  default_prog = {"pwsh"},
  -- Font
  font = wezterm.font("Hack Nerd Font Mono"),
  font_size = 16,
  -- Tab
  enable_tab_bar = false,
  -- Window Decorations
  -- window_decorations = "RESIZE",
  window_background_opacity = 0.8,
  macos_window_background_blur = 10,
  -- Colors
  colors = {
    foreground = "#CBE0F0",
    background = "#011423",
    cursor_bg = "#47FF9C",
    cursor_border = "#47FF9C",
    cursor_fg = "#011423",
    selection_bg = "#033259",
    selection_fg = "#CBE0F0",
    ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
    brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
  }
}

