return {
    {
        "stevearc/conform.nvim",
        opts = {
            -- Add a new entry here to add a formatter to conform.nvim  
            formatters_by_ft = {
                ocaml = { "ocamlformat" },
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
        },
    }
}
