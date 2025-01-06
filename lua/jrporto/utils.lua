DIAGNOSTIC_DISABLED = false

local function prompt_theme()
	vim.ui.input({ prompt = 'Select a colorscheme:\n1) Ashen\n2) Cyberdream\n3) Fogbell '}, function(input)
		local themes = {"ashen", "cyberdream", "fogbell"}
		local choice = tonumber(input)
		if choice and choice >= 1 and choice <= 3 then
			vim.cmd("colorscheme " .. themes[choice])
		end
	end)
end

local function disable_diagnostics()
	if DIAGNOSTIC_DISABLED == true then
		vim.diagnostic.enable()
		DIAGNOSTIC_DISABLED = not DIAGNOSTIC_DISABLED
		print("Diagnostics enabled!")
	else
		vim.diagnostic.disable()
		DIAGNOSTIC_DISABLED = not DIAGNOSTIC_DISABLED
		print("Diagnostics disabled!")
	end
end

vim.keymap.set("n", "<A-d>", disable_diagnostics)
vim.keymap.set("n", "<A-o>", prompt_theme)

