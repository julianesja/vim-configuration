return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers", -- Puedes cambiar a "tabs" si quieres tabs reales de nvim
          separator_style = "slant", -- "slant" | "thick" | "thin" | { 'left', 'right' }
          always_show_bufferline = true,
          show_buffer_close_icons = true,
          show_close_icon = false,
          diagnostics = "nvim_lsp", -- Si usas LSP muestra los errores
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              highlight = "Directory",
              separator = true
            }
          }
        }
      })
    end
  }