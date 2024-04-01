return {
  'chrisgrieser/nvim-various-textobjs',
  lazy = false,
  opts = { useDefaultKeymaps = true },
  config = function()
    vim.keymap.set({ 'o', 'x' }, 'aV', "<cmd>lua require('various-textobjs').value('inner')<CR>")
    vim.keymap.set({ 'o', 'x' }, 'iV', "<cmd>lua require('various-textobjs').value('outer')<CR>")

    vim.keymap.set({ 'o', 'x' }, 'aK', "<cmd>lua require('various-textobjs').key('inner')<CR>")
    vim.keymap.set({ 'o', 'x' }, 'iK', "<cmd>lua require('various-textobjs').key('outer')<CR>")

    vim.keymap.set({ 'o', 'x' }, 'av', '<cmd>lua require("various-textobjs").subword("outer")<CR>')
    vim.keymap.set({ 'o', 'x' }, 'iv', '<cmd>lua require("various-textobjs").subword("inner")<CR>')
  end,
}

-- vim.keymap.set({ 'o', 'x' }, 'aV', "<cmd>lua require('various-textobjs').value('inner')<CR>")
-- vim.keymap.set({ 'o', 'x' }, 'iV', "<cmd>lua require('various-textobjs').value('outer')<CR>")
--
-- vim.keymap.set({ 'o', 'x' }, 'aK', "<cmd>lua require('various-textobjs').key('inner')<CR>")
-- vim.keymap.set({ 'o', 'x' }, 'iK', "<cmd>lua require('various-textobjs').key('outer')<CR>")
--
-- vim.keymap.set({ 'o', 'x' }, 'av', '<cmd>lua require("various-textobjs").subword("outer")<CR>')
-- vim.keymap.set({ 'o', 'x' }, 'iv', '<cmd>lua require("various-textobjs").subword("inner")<CR>')
