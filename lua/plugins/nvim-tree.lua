-- lua/plugins/nvim-tree.lua

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("nvim-tree").setup({
          open_on_setup = true,
          open_on_setup_file = false,
            view = { width = 30 },
            renderer = {
                icons = {
                    show = { file = true, folder = true, folder_arrow = true, git = true, }
                }
            }
        })
    end
}