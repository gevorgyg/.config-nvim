function LoadTheme(theme_name)
	vim.cmd.colorscheme(theme_name)
	print("Loaded theme: "..theme_name)
end

LoadTheme("github_light")
