return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", 
        -- Optional image support in preview window: 
        -- See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                }
            }
        })
        vim.keymap.set("n", "<leader>nl", ":Neotree filesystem reveal left<CR>")
        vim.keymap.set("n", "<leader>nr", ":Neotree filesystem reveal right<CR>")
        vim.keymap.set("n", "<leader>nf", ":Neotree filesystem reveal float<CR>")
    end
}
