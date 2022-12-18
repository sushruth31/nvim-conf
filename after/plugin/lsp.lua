require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "rust_analyzer" , "tsserver" },
})
local on_attach = function(_, _)
    vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })

    vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, { noremap = true, silent = true })
    vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
end


require("lspconfig").sumneko_lua.setup {
    on_attach = on_attach
}

require("lspconfig").rust_analyzer.setup {
    on_attach = on_attach
}

require("lspconfig").tsserver.setup {
    on_attach = on_attach
}
