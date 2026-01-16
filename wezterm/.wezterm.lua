-- local wezterm = require("wezterm")
-- local config = {}
--
-- if wezterm.config_builder then
-- 	config = wezterm.config_builder()
-- end
--
-- config.enable_tab_bar = false
--
-- config.font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Medium" })
-- config.font_size = 11.0
--
-- config.term = "xterm-256color"
-- config.color_scheme = "Tokyo Night"
--
-- -- config.window_background_opacity = 0.85
-- -- config.macos_window_background_blur = 20
-- -- config.text_background_opacity = 1.0
--
-- config.use_fancy_tab_bar = false
-- config.hide_tab_bar_if_only_one_tab = true
--
-- config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
-- config.keys = {
-- 	-- Chia màn hình dọc (Ctrl+a và v)
-- 	{
-- 		key = "v",
-- 		mods = "LEADER",
-- 		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
-- 	},
-- 	-- Chia màn hình ngang (Ctrl+a và s)
-- 	{
-- 		key = "s",
-- 		mods = "LEADER",
-- 		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
-- 	},
-- }
--
-- return config

local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.colors = {
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

config.font = wezterm.font("JetBrainsMono Nerd Font Mono", { weight = "Bold" })
config.font_size = 11

config.enable_tab_bar = false

-- config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 10

return config
