return {
  'ThePrimeagen/harpoon',

  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local ui = require 'harpoon.ui'
    local mark = require 'harpoon.mark'
    vim.keymap.set('n', '<leader>hm', function()
      ui.toggle_quick_menu()
    end, { desc = '[H]arpoon [M]enu' })
    vim.keymap.set('n', '<leader>ha', function()
      mark.add_file()
    end, { desc = '[H]arpoon  [A]dd' })
    vim.keymap.set('n', '<leader>hn', function()
      ui.nav_next()
    end, { desc = '[H]arpoon [N]ext' })
    vim.keymap.set('n', '<leader>hp', function()
      mark.add_file()
    end, { desc = '[H]arpoon [P]revious' })
    vim.keymap.set('n', '<leader>ht', '<CMD>Telescope harpoon marks<CR>', { desc = '[H]arpoon [T]elescope' })
    vim.keymap.set('n', '<leader>h1', function()
      ui.nav_file(1)
    end, { desc = '[H]arpoon [1] mark' })
    vim.keymap.set('n', '<leader>h2', function()
      ui.nav_file(2)
    end, { desc = '[H]arpoon [2] mark' })
    vim.keymap.set('n', '<leader>h3', function()
      ui.nav_file(3)
    end, { desc = '[H]arpoon [3] mark' })
    vim.keymap.set('n', '<leader>h4', function()
      ui.nav_file(4)
    end, { desc = '[H]arpoon [4] mark' })
    vim.keymap.set('n', '<leader>h5', function()
      ui.nav_file(5)
    end, { desc = '[H]arpoon [5] mark' })
    vim.keymap.set('n', '<leader>h6', function()
      ui.nav_file(6)
    end, { desc = '[H]arpoon [6] mark' })
    vim.keymap.set('n', '<leader>h7', function()
      ui.nav_file(7)
    end, { desc = '[H]arpoon [7] mark' })
    vim.keymap.set('n', '<leader>h8', function()
      ui.nav_file(8)
    end, { desc = '[H]arpoon [8] mark' })

    require('harpoon').setup {
      mark_branch = false,
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
    }
  end,
}
