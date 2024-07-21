local M = {}

function M.hello()
	vim.notify("Hello, World!!!", vim.log.levels.OFF, { title = "Message" })
end

vim.api.nvim_create_user_command("Hello", M.hello, {})

return M
