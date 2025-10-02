return {
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascriptreact", "typescriptreact" },
    config = function()
      vim.g.user_emmet_expandabbr_key = "<C-e>" -- Ctrl+e expands Emmet abbreviations
      vim.g.user_emmet_settings = {
        javascript = { jsx = true },
        html = { inline_break = true },
      }
    end,
  },
}
