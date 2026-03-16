-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()


config.initial_cols = 120
config.initial_rows = 28

config.hide_tab_bar_if_only_one_tab = true
config.use_ime = true
config.default_domain = 'WSL:Ubuntu-24.04'

config.font_size = 10
config.font = wezterm.font 'Cascadia Mono PL'
config.color_scheme = 'One Half Black (Gogh)'
config.window_background_opacity = 0.9

-- Finally, return the configuration to wezterm:
return config
