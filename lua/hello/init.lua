local M = {}

function M.hello(title)
	vim.notify("Hello, Tony!", vim.log.levels.OFF, { title = title })
end

function M.setup(config)
	config = config or {}
	local title = config.title or "Message"
	vim.api.nvim_create_user_command("Hello", function()
		M.hello(title)
	end, {})
end

return M
