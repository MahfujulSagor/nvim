return {
  {
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")

      -- Configure linters per filetype
      lint.linters_by_ft = {
        go = { "golangcilint" },
      }

      -- Optional: show inline virtual text
      vim.api.nvim_create_autocmd({ "BufWritePost", "CursorHold" }, {
        callback = function()
          lint.try_lint()
        end,
      })

      -- Use signs and virtual text
      vim.diagnostic.config({
        virtual_text = {
          prefix = "●",
          spacing = 2,
        },
        signs = true,
        underline = true,
        severity_sort = true,
      })
    end,
  },
}
