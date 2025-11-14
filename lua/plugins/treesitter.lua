return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "bash", "css", "html", "json", "make", "sql", "lua", "javascript", "ruby" },
      highlight = { enable = true },
      indent = { enable = true }
    })

    -- auto closes neo-tree when opening a file
    -- require("neo-tree").setup({
    --   event_handlers = {
    --     {
    --       event = "file_opened",
    --       handler = function(file_path)
    --         require("neo-tree.command").execute({ action = "close" })
    --       end
    --     },
    --   }
    -- })
  end
}
