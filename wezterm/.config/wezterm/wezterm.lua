local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.window_background_opacity = 0.95
config.macos_window_background_blur = 100

-- config.font = wezterm.font 'OverpassM Nerd Font'
-- config.font = wezterm.font 'Mononoki Nerd Font'
-- config.font = wezterm.font 'MonoLisa Nerd Font'
-- config.font = wezterm.font 'MonospiceKr Nerd Font'
-- config.font = wezterm.font 'Lilex Nerd Font'

config.font = wezterm.font({
	family = "MonoLisa Nerd Font",
	weight = "Light",
	stretch = "UltraCondensed",
})
config.font_size = 12.0
config.color_scheme = "Dracula"

config.window_frame = {
	font = wezterm.font({ family = "Roboto", weight = "Bold" }),
	font_size = 11.0,
}

config.initial_rows = 160
config.initial_cols = 160

return config
