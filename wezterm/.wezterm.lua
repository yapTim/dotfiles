-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 12
config.color_scheme = 'hardhacker'
config.font = wezterm.font 'FantasqueSansM Nerd Font'
-- config.font = wezterm.font 'IosevkaTerm Nerd Font'

-- Configure WSL
local wsl_domains = wezterm.default_wsl_domains()
config.wsl_domains = wsl_domains
config.default_domain = 'WSL:Ubuntu'

-- Custom Keybinds
config.keys = {
  {
    key = 'w',
    mods = 'CTRL',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
}

-- Finally, return the configuration to wezterm:
return config
