local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")});
end)

require('telescope').setup {
  defaults = {
    mappings = {
      n = {
        ["<C-t>"] = function(prompt_bufnr)
          local selected_entry = action_state.get_selected_entry()
          local filename = selected_entry.filename or selected_entry[1]
          actions.close(prompt_bufnr)
          vim.cmd(string.format("tabedit %s", filename))
        end
      },
    },
  }
}
