return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      local lspconfig = require("lspconfig")
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "golangci_lint_ls", "gopls", "pyright" },
        lspconfig = lspconfig
      })

    end
  },
  {
    "neovim/nvim-lspconfig",
      config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.golangci_lint_ls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.pyright.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
