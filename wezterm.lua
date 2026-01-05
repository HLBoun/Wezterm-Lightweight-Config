-- Pull in the wezterm API
local wezterm = require "wezterm"

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
-- |
-- |
-- |
-- |
-- V

-- Launching defaults
--config.default_prog = { 'pwsh.exe' }
config.default_cwd = "c:/Users/Admin/source/repos"


-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 21 -- Has to be a weird because of weird padding issues?
config.color_scheme = 'gruvbox'
--config.font = wezterm.font("Mononoki Nerd Font")
config.line_height = 1 -- Extra 0.1 because it helps get rid of a little bit of extra padding at the bottom on 1440p

-- Appearance
--config.window_decorations = "RESIZE" --dont need this on mac because it goes fullscreen by itself
config.hide_tab_bar_if_only_one_tab = true
config.window_padding =
{
top = 0,
bottom = 0,
left = 0,
right = 0,
}

-- Background image
config.window_background_image = "/Users/legendboun/Pictures/wallpapers/2bsheesh.jpg"
config.window_background_opacity = 0.2
config.window_background_image_hsb =
{
brightness = 0.4,
hue = 1.0,
saturation = 1.0,
}

-- Keybinds
config.keys =
{
{
key = 'F11',
action = wezterm.action.ToggleFullScreen,
},

{
key = 'F7',
action = wezterm.action.CloseCurrentTab { confirm = true },
},
}

-- A
-- |
-- |
-- |
-- |
-- Where you actually apply your config choices


-- Finally, return the configuration to wezterm:
return config
