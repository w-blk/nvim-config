return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<C-\>]],
            direction = "horizontal"
        })
        vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")
        vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>")
        vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
    end
}
