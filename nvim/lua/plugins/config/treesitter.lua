M = function()
    require('nvim-treesitter.configs').setup {
        ensure_installed = "all",
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
        incremental_selection = {
            enable = false,
            -- keymaps = {
            --     init_selection = '<CR>',
            --     node_incremental = '<CR>',
            --     node_decremental = '<BS>',
            --     scope_incremental = '<TAB>',
            -- }
        },
        textobjects = {
            move = {
                enable = true,
                set_jumps = true, -- whether to set jumps in the jumplist
                goto_next_start = {
                    ["<C-j>"] = "@parameter.inner",
                },
                goto_previous_start = {
                    ["<C-k>"] = "@parameter.inner",
                },
            },
            select = {
                enable = true,
                lookahead = true,
                keymaps = {
                    ["of"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["oc"] = "@class.outer",
                    ["ic"] = "@class.inner",
                    ["p"] = "@parameter.outer"
                },
                -- You can choose the select mode (default is charwise 'v')
                --
                -- Can also be a function which gets passed a table with the keys
                -- * query_string: eg '@function.inner'
                -- * method: eg 'v' or 'o'
                -- and should return the mode ('v', 'V', or '<c-v>') or a table
                -- mapping query_strings to modes.
                -- selection_modes = {
                --     ['@parameter.inner'] = 'v', -- charwise
                --     ['@function.outer'] = 'V', -- linewise
                -- },
                -- `ap`.
                --
                -- Can also be a function which gets passed a table with the keys
                -- * query_string: eg '@function.inner'
                -- * selection_mode: eg 'v'
                -- and should return true of false
                include_surrounding_whitespace = false,
            },
        }
    }
end

return M
