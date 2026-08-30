local ensure_installed = {
    "lua", "go", "gomod", "gosum", "typescript", "tsx", "javascript",
    "json", "yaml", "toml", "html", "css", "bash", "dockerfile", "sql",
    "markdown", "markdown_inline", "vimdoc", "regex", "gitcommit", "diff",
}

local installed = require("nvim-treesitter.config").get_installed()
local to_install = vim.tbl_filter(function(lang)
    return not vim.tbl_contains(installed, lang)
end, ensure_installed)

if #to_install > 0 then
    require("nvim-treesitter").install(to_install)
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        pcall(vim.treesitter.start)
    end,
})
