-- [ Leader key: Space ] --
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [ General remap ] --
vim.keymap.set('i', "jk", "<Esc>")
vim.keymap.set('n', "<leader>q", "<CMD>q<CR>", { desc = "Quit" })

-- [ Ctrl + Backspace to delete word inser/command/terminal ] --
vim.keymap.set({ 'c', 'i', 't' }, "<C-BS>", "<C-W>")

-- [ Swap lines ] --
vim.keymap.set({ 'n', 'i' }, "<M-Up>", "<CMD>m-2<CR>")
vim.keymap.set({ 'n', 'i' }, "<M-Down>", "<CMD>m+1<CR>")

-- [ Shortcut to edit and cd ] --
vim.keymap.set('n', "<leader>.", ":edit ", { desc = "Edit file" })
vim.keymap.set('n', "<leader>c", ":cd ", { desc = "Change dir" })


-- [ Windows ] --
-- [ Split ] --
vim.keymap.set('n', "<leader>s", "<CMD>split<CR>", { desc = "Horizontal split" })
vim.keymap.set('n', "<leader>v", "<CMD>vsplit<CR>", { desc = "Vertical split" })

-- [ Navigation ] --
vim.keymap.set('n', "<C-h>", "<C-w>h")
vim.keymap.set('n', "<C-l>", "<C-w>l")
vim.keymap.set('n', "<C-k>", "<C-w>k")
vim.keymap.set('n', "<C-j>", "<C-w>j")

-- [ Size ] --
vim.keymap.set('n', "<C-Left>", "<C-w><")
vim.keymap.set('n', "<C-Right>", "<C-w>>")
vim.keymap.set('n', "<C-Up>", "<C-w>+")
vim.keymap.set('n', "<C-Down>", "<C-w>-")


-- [ Buffers ] --
vim.keymap.set('n', "<leader>bb", "<CMD>buffers<CR>:b ", { desc = "Select buffer" })
vim.keymap.set('n', "<leader>bl", "<CMD>buffers<CR>:b ", { desc = "List buffers" })
vim.keymap.set('n', "<leader>bn", "<CMD>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set('n', "<leader>bp", "<CMD>bprevious<CR>", { desc = "Previous buffer" })


-- [ Toggle project explorer ] --
vim.keymap.set('n', "<leader>p", "<CMD>Neotree toggle<CR>", { desc = "Toggle files tree" })


-- [ Find file/grep ] --
vim.keymap.set('n', "<leader>f", "<CMD>Telescope find_files<CR>", { desc = "Find file" })
vim.keymap.set('n', "<leader>g", "<CMD>Telescope live_grep<CR>", { desc = "Grep" })


-- [ Terminal ] --
vim.keymap.set('t', "<Esc>", "<C-\\><C-n><C-w>h", { silent = true }) -- allow to switch back to normal mode
vim.keymap.set('t', "jk", "<C-\\><C-n><C-w>h", { silent = true }) -- rebind <Escape> to <jk>
vim.keymap.set('n', "<leader>t", "<CMD>ToggleTerm direction=horizontal<CR>", { desc = "Toggle terminal" })
vim.keymap.set('n', "<leader>T", "<CMD>ToggleTerm direction=float<CR>", { desc = "Open terminal window" })


-- [ LSP ] --
vim.keymap.set('n', "H", vim.lsp.buf.hover, {})
vim.keymap.set('n', "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ 'n', 'v' }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set('n', "<leader>x", vim.lsp.buf.references, {})


-- [Git] --
vim.keymap.set('n', "<leader>Gp", "<CMD>Gitsigns preview_hunk<CR>", {})
vim.keymap.set('n', "<leader>Gt", "<CMD>Gitsigns preview_hunk_inline<CR>", {})
