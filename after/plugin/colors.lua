local LIGHT_THEME = "github_light"
local DARK_THEME = "catppuccin"

function LoadTheme(theme_name)
	vim.cmd.colorscheme(theme_name)
	print("Loaded theme: " .. theme_name)
end

local OS_NAME = vim.fn.system { 'uname' }:gsub("%s+", "")

if OS_NAME == "Darwin" then
	if vim.fn.system { 'defaults', 'read', '-g', 'AppleInterfaceStyle' }:gsub("%s+", "") == "Dark" then
		LoadTheme(DARK_THEME)
	else
		LoadTheme(LIGHT_THEME)
	end
	return
end

LoadTheme(LIGHT_THEME)
