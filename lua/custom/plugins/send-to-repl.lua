-- send-to-repl
-- https://github.com/toreerdmann/send-to-repl.nvim

vim.pack.add { 'https://github.com/toreerdmann/send-to-repl.nvim' }

require('send-to-repl').setup {
  bracketed_paste = true,
  layout = {
    split = 'vertical',
    size = 0.4,
  },
}

local repl = require 'send-to-repl'
local map = vim.keymap.set

map('n', '<leader>l', repl.send_line, { desc = 'Send line to REPL' })
map('n', '<leader>p', repl.send_word, { desc = 'Send word to REPL' })
map('n', '<leader>c', repl.send_cell, { desc = 'Send cell to REPL' })
map('n', '<leader><CR>', repl.send_paragraph, { desc = 'Send paragraph to REPL' })
map('v', '<leader><CR>', repl.send_visual, { desc = 'Send selection to REPL' })
map('n', '<leader>rf', repl.send_file, { desc = 'Send file to REPL' })
map('n', '<leader>rt', repl.toggle_repl, { desc = 'Toggle REPL window' })
map('t', '<leader>rt', function()
  local esc = vim.api.nvim_replace_termcodes('<C-\\><C-n>', true, false, true)
  vim.api.nvim_feedkeys(esc, 'n', false)
  vim.schedule(repl.toggle_repl)
end, { desc = 'Toggle from REPL window' })
map('n', '<leader>rr', repl.restart_repl, { desc = 'Restart REPL' })
map('n', 'gxc', repl.send_operator, { desc = 'Send motion to REPL' })
