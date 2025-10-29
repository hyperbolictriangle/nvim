return {
    {
        "stevearc/conform.nvim",
        opts = {
            -- Add a new entry here to add a formatter to conform.nvim
            formatters_by_ft = {
                ocaml = { "ocamlformat" },
                go = { "goimports" },
                cpp = { "clang-format" },
                c = { "clang-format" },
            },

            -- configure your formatters
            formatters = {
                ocamlformat = {
                    prepend_args = {
                        "--if-then-else",
                        "vertical",
                        "--break-cases",
                        "fit-or-vertical",
                        "--type-decl",
                        "sparse",
                    },
                },
            },
            -- remove this option to diable format on save for conform
            format_on_save = {
                -- These options will be passed to conform.format()
                timeout_ms = 500,
                lsp_format = "fallback",
            },
        },
    }
}
