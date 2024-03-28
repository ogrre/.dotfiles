-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.window_decorations = "INTEGRATED_BUTTONS"


-- and finally, return the configuration to wezterm
return config
