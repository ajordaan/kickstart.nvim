return {
  'chrisgrieser/nvim-various-textobjs',
  lazy = false,
  opts = { useDefaultKeymaps = true },
  config = function()
    vim.keymap.set({ 'o', 'x' }, 'aV', "<cmd>lua require('various-textobjs').value('outer')<CR>")
    vim.keymap.set({ 'o', 'x' }, 'iV', "<cmd>lua require('various-textobjs').value('inner')<CR>")

    vim.keymap.set({ 'o', 'x' }, 'aK', "<cmd>lua require('various-textobjs').key('outer')<CR>")
    vim.keymap.set({ 'o', 'x' }, 'iK', "<cmd>lua require('various-textobjs').key('inner')<CR>")

    vim.keymap.set({ 'o', 'x' }, 'av', '<cmd>lua require("various-textobjs").subword("outer")<CR>')
    vim.keymap.set({ 'o', 'x' }, 'iv', '<cmd>lua require("various-textobjs").subword("inner")<CR>')

    vim.keymap.set({ 'o', 'x' }, 'an', '<cmd>lua require("various-textobjs").number("outer")<CR>')
    vim.keymap.set({ 'o', 'x' }, 'in', '<cmd>lua require("various-textobjs").number("inner")<CR>')

    vim.keymap.set({ 'o', 'x' }, 'Q', '<cmd>lua require("various-textobjs").toNextQuotationMark()<CR>')
    vim.keymap.set({ 'o', 'x' }, 'R', '<cmd>lua require("various-textobjs").restOfIndentation()<CR>')
    vim.keymap.set({ 'o', 'x' }, 'r', '<cmd>lua require("various-textobjs").restOfParagraph()<CR>')
    vim.keymap.set({ 'o', 'x' }, 'C', '<cmd>lua require("various-textobjs").toNextClosingBracket()<CR>')
  end,
}

-- vim.keymap.set({ 'o', 'x' }, 'aV', "<cmd>lua require('various-textobjs').va123lue('inner')<CR>")
-- vim.keymap.set({ 'o', 'x' }, 'iV', "<cmd>lua require('various-textobjs').value('outer')<CR>")
--
-- vim.keymap.set({ 'o', 'x' }, 'aK', "<cmd>lua require('various-textobjs').key('inner')<CR>")
-- vim.keymap.set({ 'o', 'x' }, 'iK', "<cmd>lua require('various-textobjs').key('outer')<CR>")
--
-- vim.keymap.set({ 'o', 'x' }, 'av', '<cmd>lua require("various-textobjs").subword("outer")<CR>')
-- vim.keymap.set({ 'o', 'x' }, 'iv', '<cmd>lua require("various-textobjs").subword("inner")<CR>')
