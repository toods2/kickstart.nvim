-- render-markdown.nvim
-- https://github.com/toreerdmann/send-to-repl.nvim

vim.pack.add { 'https://github.com/MeanderingProgrammer/render-markdown.nvim' }

require('render-markdown').setup { file_types = { 'markdown', 'quarto' }, }
