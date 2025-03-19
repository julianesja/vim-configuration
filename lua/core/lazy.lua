-- lua/core/lazy.lua

-- Ruta de instalación de lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Si no existe, lo clona de GitHub
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

-- Cargar los plugins
require("lazy").setup({
    { import = "plugins" } -- Esto busca en lua/plugins/
})