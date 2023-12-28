local wezterm = require('wezterm')

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font('JetBrainsMono Nerd Font Propo')

config.front_end = "WebGpu"
config.window_decorations = "TITLE|RESIZE|MACOS_FORCE_DISABLE_SHADOW"

wezterm.log_info(wezterm.get_builtin_color_schemes()['carbonfox'])

local colors = wezterm.get_builtin_color_schemes()['carbonfox']

colors.tab_bar.active_tab.bg_color = colors.background
colors.tab_bar.active_tab.fg_color = colors.foreground
colors.tab_bar.active_tab.intensity = 'Bold'
colors.tab_bar.active_tab.underline = 'Single'

colors.tab_bar.inactive_tab.bg_color = colors.tab_bar.background

colors.tab_bar.inactive_tab_hover.bg_color = colors.tab_bar.background

colors.tab_bar.new_tab.bg_color = colors.tab_bar.background

colors.tab_bar.new_tab_hover.bg_color = colors.tab_bar.background

config.colors = colors

return config
