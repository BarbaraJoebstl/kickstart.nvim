return {
    -- Additional lua configuration, makes nvim stuff amazing!
    "folke/neodev.nvim",
    opts = {},
    config = function()
        require('neodev').setup()
    end
}

