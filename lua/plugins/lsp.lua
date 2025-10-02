return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      local servers = { "gopls", "tsserver", "dartls", "pyright", "html", "cssls", "jsonls", "yamlls", "dockerls" }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({})
      end
    end,
  },
}
