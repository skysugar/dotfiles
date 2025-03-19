local lspconfig = require("lspconfig")

-- 启用 Python LSP
lspconfig.pyright.setup({})

-- 启用 Lua LSP
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})
