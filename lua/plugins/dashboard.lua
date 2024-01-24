return {
    "goolord/alpha-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function ()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")
        dashboard.section.header.val = {
            [[⣿⡄⠄⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠁⠄⠄]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠄⠄⠸⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠄]],
            [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠄⠄⠄⠄⠄⠑⡿⣿⣿⣿⣿⣤⡙⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇]],
            [[⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠄⠄⠄⠄⠄⠄⠄⢘⠝⢿⣿⣿⣟⣽⣇⣝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃]],
            [[⠄⠈⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠄⠄⠄⠄⠄⠄⠄⠄⣀⣴⣶⣝⣻⡿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠁⠄⠄]],
            [[⠄⠄⠄⠄⣿⣿⣿⣿⣿⣿⣿⡟⢸⣿⡿⢿⣦⣀⠄⠄⠄⢀⣀⡀⣠⣴⣿⣿⣿⣿⣿⣿⣿⡿⣿⣷⣻⣿⣿⠋⢻⣿⠋⠄⠄⠄⠄⠄]],
            [[⠄⠄⢠⣴⣿⣿⣿⡿⣿⣿⣿⢡⣮⠋⢁⣴⣾⣽⣳⣦⣼⣿⣿⣿⣿⡾⠿⠞⣿⡟⡗⢲⢹⣿⣿⣿⣿⣿⡏⠁⣿⣿⣄⡀⠄⠄⠄⠄]],
            [[⣀⣴⣿⣿⣿⣿⣿⠘⠙⢻⡿⣿⣿⠄⢸⡏⠖⢲⠙⣿⡎⢉⣩⡿⣿⣦⣴⣴⡻⣷⣭⣵⣿⣷⡿⣿⣿⣿⡇⢀⣧⣿⣿⣿⣦⣬⡀⠄]],
            [[⠛⢻⣿⣿⣿⣿⣿⣸⡄⠄⠹⣻⣿⣇⠈⠻⣦⣭⣾⠿⢡⣿⣿⣇⢻⣿⣿⣿⣿⣿⣶⣭⣿⣫⣸⣿⣿⢉⣠⢾⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣴⣾⡟⣿⣿⣿⣿⣷⣷⣄⠄⠿⢿⣿⢂⠄⠄⠄⠄⠄⠸⣿⣿⣿⣀⣿⣿⣿⣿⣿⣯⡗⣿⣿⣿⣿⡏⢻⣹⣾⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣷⣤⣌⣿⣏⣾⣿⣶⣶⣤⣤⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣳⡿⢠⡗⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⢻⣿⣿⡎⣿⡿⣿⣿⣿⣿⣿⣷⣶⠄⠹⣦⡫⣿⣹⣿⣿⠿⢿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣷⠟⢀⣼⢳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⡜⢿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠈⠛⠮⡃⠿⢿⣷⢿⣿⣿⣿⣿⣿⣿⣿⣿⡷⠛⢁⢔⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣎⢿⣿⣿⣿⣿⣿⣿⣿⣏⢀⠄⠄⠄⠄⠄⠄⠄⠛⠿⠿⠿⠿⠛⠋⢩⡠⠂⣱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣧⣸⣿⣿⣿⣿⣿⡿⡽⣆⠘⣦⣄⠄⠄⠄⠄⠄⠄⠄⢀⣤⣶⡿⠇⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
            [[⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿⣿⡇⢿⣽⡆⡿⣳⢌⠲⣤⣤⢐⣲⣭⣵⣿⣿⠋⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣽⣿⣿]],
        }
        dashboard.section.buttons.val = {
            dashboard.button('f', " Find File", "<CMD>Telescope find_files<CR>"),
            dashboard.button('e', "  New file", ":edit "),
            dashboard.button('r', "  Recently used files", "<CMD>Telescope oldfiles<CR>"),
            dashboard.button('c', "  Configuration", "<CMD>edit ~/AppData/Local/nvim/init.lua<CR>"),
            dashboard.button('q', "  Quit Neovim", "<CMD>qa<CR>"),
        }
        alpha.setup(dashboard.opts)
    end
}



