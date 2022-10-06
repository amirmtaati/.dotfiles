for _, source in ipairs {
	"core.options",
    "core.plugins",
    "core.mappings",
    "configs.statusline",
    "configs.bufferline",
    "configs.colors",
    "configs.lsp",
    "configs.mason",
    "configs.cmp",  
    "configs.impatient"
} do
	pcall(require, source)
end
