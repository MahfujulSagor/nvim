return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          keymap = {
            accept = "<C-l>",
            next = "<C-n>",
            prev = "<C-p>",
            dismiss = "<C-\\>",
          },
        }, -- enable suggestions for Blink
        panel = { enabled = false }, -- panel is optional
      })
    end,
  },
  -- Blink setup
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        default = { "lsp", "path", "buffer" },
      },
    },
  },
}
