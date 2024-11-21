return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader><F5>', '<cmd>UndotreeToggle<cr><cmd>UndotreeFocus<cr>')
  end,
}
