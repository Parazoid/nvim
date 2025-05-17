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
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {"nvim-treesitter/playground"},
    {"ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    },
    {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'},
    {'rebelot/kanagawa.nvim'},
    {'ggandor/leap.nvim'},
}

require("lazy").setup(plugins, opts)
require("leap").add_default_mappings(true) -- true is for overiding plugin mappings, <S-s> to leap backwards
