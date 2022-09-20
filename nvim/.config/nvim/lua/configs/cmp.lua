local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
    		require("luasnip").lsp_expand(args.body)
		end,
	},
    mapping = cmp.mapping.preset.insert({
        ['<Enter>'] = cmp.mapping.confirm({ select = true }),
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
	}),

	sources = {
		{ name = "nvim_lsp" },
    	{ name = "luasnip" },
		{ name = "buffer" },
	},
})


