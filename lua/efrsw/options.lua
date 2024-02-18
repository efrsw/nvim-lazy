local op = vim.opt

op.relativenumber = true
op.number = true

op.tabstop = 2
op.shiftwidth = 2
op.expandtab = true
op.autoindent = true
op.smartindent = true

op.guicursor = "n-v-c-i:block"

-- highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 500 }
  end,
})
