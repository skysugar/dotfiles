local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- 主题
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  -- 状态栏
  { "nvim-lualine/lualine.nvim" },
  -- LSP
  { "neovim/nvim-lspconfig" },
  -- 自动补全
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  -- 语法高亮
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  -- 文件搜索
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
})
