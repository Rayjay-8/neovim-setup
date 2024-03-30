-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})

--vim.opt_global.formatoptions:remove("cro")

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "*",
--   callback = function()
--     vim.opt_local.formatoptions:remove({ "r", "o" })
--   end,
-- })

-- comando para remover virgulas no final de um json
-- :%s/,\s*$/<CR>
--vim.api.nvim_command([[autocmd FileType json autocmd BufWritePre <buffer> %s/,\s*$/\r/g]])

-- Cria um autocmd para remover as vírgulas finais antes de salvar um arquivo JSON  ou JSONC
