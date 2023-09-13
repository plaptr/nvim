require("toggleterm").setup {
    open_mapping = [[<F7>]],
    direction = 'float',
    size = 50,
}

local Terminal = require('toggleterm.terminal').Terminal

function _lazygit_toggle()
     Terminal:new({ cmd = "lazygit", hidden = true }):toggle()
end

vim.keymap.set('n', '<leader>g', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true })
