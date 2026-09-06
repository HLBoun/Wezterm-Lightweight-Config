-- Pull in the wezterm API
local wezterm = require "wezterm"

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
--		| --		|
--		|
--		|
--		V

-- Launching defaults (comment these out if you're not on windows)
--config.default_prog = { 'pwsh.exe' }
--config.default_cwd =  "/opt/nvim" 


-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 20 			-- Has to be a weird because of weird padding issues?
config.color_scheme = 'gruvbox'
config.font = wezterm.font("Mononoki Nerd Font")
config.line_height = 1 		-- Extra 0.1 because it helps get rid of a little bit of extra padding at the bottom on 1440p

-- Appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = 
{
      top = 0,
      bottom = 0,
      left = 0,
      right = 0,
}

-- Background image
config.window_background_image = "/home/legendboun/Pictures/wallpapers/frierenInBlueFlowers.png"
config.window_background_opacity = 0.95
config.window_background_image_hsb = 
{
      brightness = 0.2,
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

      {
	    key = 'c',
	    mods = 'CTRL|SHIFT',
	    action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection',
      },

      {
	    key = 'v',
	    mods = 'CTRL',
	    action = wezterm.action.PasteFrom 'Clipboard',
      },

      {
	   key = 'Backspace',
	   mods = 'CTRL',
	   action = wezterm.action.SendKey { key = 'w', mods = 'CTRL'},
      },
}

--		A
--		|
--		|
--		|
--		|
-- Where you actually apply your config choices


-- Finally, return the configuration to wezterm:
return config
