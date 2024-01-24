return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup({
            open_mapping = "<C-\\>",
            start_inset = true
        })
        vim.cmd [[let &shell = "C:\\Program Files\\Git\\bin\\bash.exe"]]
        vim.cmd [[let &shellcmdflag = "-s"]]
    end
}