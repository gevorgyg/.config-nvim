require("telescope").load_extension('harpoon')

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>hh",
	function()
		mark.add_file()
		print("!HARPOONED!")
	end,
	{ desc = "[H]arpoon the file" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

for i = 1, 5 do
	vim.keymap.set("n", "<C-h>" .. i, function()
			ui.nav_file(i)
			print("Harpoon mark: " .. i)
		end,
		{ desc = "Switch to Harpoon mark #" .. i })
end
