local function bind(op, outer_opts) outer_opts = outer_opts or {noremap = true}
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

local nmap = bind("n", {noremap = false})
local nnoremap = bind("n")
local vnoremap = bind("v")
local xnoremap = bind("x")
local inoremap = bind("i")

-- General
nnoremap("<leader>w", "<cmd>w<cr>")
nnoremap("<leader>sf", "<cmd>w!<CR>")
nnoremap("<leader>q", "<cmd>q<CR>")
inoremap("<leader><leader>", "<Esc>")

-- Packer
nnoremap("<leader>ps",  "<cmd>PackerSync<CR>")

-- Neotree
nnoremap("<leader>e", "<cmd>Neotree toggle<CR>")

-- Telescope
nnoremap("<leader>ff", function() require("telescope.builtin").find_files() end)
