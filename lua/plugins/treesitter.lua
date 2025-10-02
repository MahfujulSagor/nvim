return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "lua",
        "go",
        "typescript",
        "tsx",
        "javascript",
        "json",
        "html",
        "css",
        "c",
        "cpp",
        "yaml",
        "dockerfile",
        "dart",
      },
      highlight = { enable = true },
      indent = { enable = true },
      rainbow = {
        enable = true, -- enable rainbow brackets
        extended_mode = true, -- also highlight non-bracket delimiters
        max_file_lines = 1000, -- optional: disable for huge files
      },
    },
  },
  -- Optional: HTML/XML autotagging
  {
    "windwp/nvim-ts-autotag",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
