local M = {}

function M.hello()
	vim.notify("Hello, Tony!!!", vim.log.levels.OFF, { title = "Message" })
end

function M.setup()
	vim.api.nvim_create_user_command("Hello", M.hello, {})
end

return M
