local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- Extend default capabilities with completion support from nvim-cmp
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Shared function that runs when any LSP server attaches to a buffer
local on_attach = function(client, bufnr)
    local map = function(keys, func, desc)
        vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "LSP: " .. desc })
    end

    map("gd", vim.lsp.buf.definition, "Go to definition")
    map("gr", vim.lsp.buf.references, "List references")
    map("K", vim.lsp.buf.hover, "Hover documentation")
    map("<leader>ca", vim.lsp.buf.code_action, "Code action")
    map("<leader>rn", vim.lsp.buf.rename, "Rename symbol")
    map("gI", vim.lsp.buf.implementation, "Go to implementation")
    map("gD", vim.lsp.buf.declaration, "Go to declaration")
    map("<leader>D", vim.lsp.buf.type_definition, "Type definition")
    map("<leader>ds", vim.lsp.buf.document_symbol, "Document symbols")

    -- Show diagnostics in a floating window on cursor hold
    vim.api.nvim_create_autocmd("CursorHold", {
        buffer = bufnr,
        callback = function()
            vim.diagnostic.open_float(nil, { focusable = false })
        end,
    })
end

-- TypeScript / JavaScript
lspconfig.ts_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    init_options = {
        preferences = {
            importModuleSpecifierPreference = "relative",
            includeInlayParameterNameHints = "all",
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
        },
    },
})

-- Go
lspconfig.gopls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                shadow = true,
                nilness = true,
                unusedwrite = true,
            },
            staticcheck = true,
            gofumpt = true,
            usePlaceholders = true,
        },
    },
})

-- Lua (Neovim config development)
lspconfig.lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = { version = "LuaJIT" },
            workspace = {
                checkThirdParty = false,
                library = vim.api.nvim_get_runtime_file("", true),
            },
            diagnostics = {
                globals = { "vim" },
            },
            telemetry = { enable = false },
            completion = {
                callSnippet = "Replace",
            },
        },
    },
})

