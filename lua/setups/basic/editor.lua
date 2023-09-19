vim.wo.number = true

vim.bo.smartindent = true

vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.mouse = "a"

vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
