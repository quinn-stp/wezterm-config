local wezterm = require('wezterm')

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.default_prog = { '/usr/local/bin/fish', '--login' }

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font('JetBrainsMono Nerd Font Propo')
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

config.front_end = "WebGpu"
config.window_decorations = "TITLE|RESIZE|MACOS_FORCE_DISABLE_SHADOW"

local colors = wezterm.color.get_builtin_schemes()['EverforestDark (Gogh)']

colors.background = '272e33'

colors.tab_bar = {
    background = colors.background,
    active_tab = {
        bg_color = colors.background,
        fg_color = colors.foreground,
        intensity = 'Bold',
        underline = 'Single',
    },
    inactive_tab = {
        fg_color = colors.foreground,
        bg_color = colors.background,
    },
    inactive_tab_hover = {
        fg_color = colors.foreground,
        bg_color = colors.background,
    },
    new_tab = {
        fg_color = colors.foreground,
        bg_color = colors.background,
    },
    new_tab_hover = {
        fg_color = colors.foreground,
        bg_color = colors.background,
    }
}

config.colors = colors

config.keys = {
    {
        key = 'h',
        mods = 'SUPER',
        action = wezterm.action.ActivatePaneDirection('Left')
    },
    {
        key = 'j',
        mods = 'SUPER',
        action = wezterm.action.ActivatePaneDirection('Down')
    },
    {
        key = 'k',
        mods = 'SUPER',
        action = wezterm.action.ActivatePaneDirection('Up')
    },
    {
        key = 'l',
        mods = 'SUPER',
        action = wezterm.action.ActivatePaneDirection('Right')
    },
}

return config
