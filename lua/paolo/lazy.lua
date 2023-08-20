local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)
local plugins = {
    { 'catppuccin/nvim',                 name = 'catppuccin', priority = 1000 },
    { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" },
    'theprimeagen/harpoon',
    { 'nvim-telescope/telescope.nvim', tag = '0.1.2',      dependencies = { 'nvim-lua/plenary.nvim' } },
    { 'akinsho/toggleterm.nvim',       version = "*",      config = true },
    { 'neoclide/coc.nvim',             branch = 'release' },
    { 'numToStr/Comment.nvim',         opts = {},          lazy = false, },
    { 'stevearc/oil.nvim',             opts = {},          dependencies = { "nvim-tree/nvim-web-devicons" } },
    { 'mg979/vim-visual-multi',        branch = 'master' },
    { "folke/which-key.nvim",          event = "VeryLazy", opts = {} },
    "windwp/nvim-ts-autotag",
    { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } },
    {
        'laytan/tailwind-sorter.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
        build = 'cd formatter && npm i && npm run build',
        config = true
    },
}


local opts = {}

require("lazy").setup(plugins, opts)
