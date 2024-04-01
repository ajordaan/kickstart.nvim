return {
  'cbochs/grapple.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
  },
  opts = {
    scope = 'git_branch', -- also try out "git_branch"
    icons = false,
  },
  event = { 'BufReadPost', 'BufNewFile' },
  cmd = 'Grapple',
  keys = {
    { '<leader>a', '<cmd>Grapple toggle<cr>', desc = 'Grapple toggle tag' },
    { '<c-h>', '<cmd>Grapple toggle_tags<cr>', desc = 'Grapple open tags window' },

    { '<c-j>', '<cmd>Grapple select index=1<cr>', desc = 'Select first tag' },
    { '<c-k>', '<cmd>Grapple select index=2<cr>', desc = 'Select second tag' },
    { '<c-l>', '<cmd>Grapple select index=3<cr>', desc = 'Select third tag' },
    { '<c-;>', '<cmd>Grapple select index=4<cr>', desc = 'Select fourth tag' },
  },
}
