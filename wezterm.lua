local wezterm = require('wezterm')

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = 'carbonfox'

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font('JetBrainsMono Nerd Font Propo')

config.front_end = "WebGpu"
config.window_decorations = "TITLE|RESIZE|MACOS_FORCE_DISABLE_SHADOW"

return config
