local run_commands = {
    python = "python3 %"
}

vim.api.nvim_create_user_command("Run", function()
    local filetype = vim.bo.filetype
    if run_commands[filetype] then
        vim.cmd("sp")
        vim.cmd("resize 15")
        vim.cmd("term " .. run_commands[filetype])
    else
        print('Run command failed... "', filetype, '"')
    end
end, {})
