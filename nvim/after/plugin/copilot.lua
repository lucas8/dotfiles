-- if (vim.fn.exists('neovide') == 1) then
--     vim.cmd([[imap <silent><script><expr> <C-Tab> copilot#Accept("")]]) -- <C-Tab> to accept - only in neovide
-- else
--     vim.cmd([[imap <silent><script><expr> <C-x> copilot#Accept("")]]) -- <C-x> to accept
--     vim.g.copilot_no_tab_map = true
-- end

require("copilot").setup({
    panel = {
        enabled = false,
        -- auto_refresh = true,
        -- keymap = {
        --     jump_next = "<c-j>",
        --     jump_prev = "<c-k>",
        --     accept = "<c-x>",
        --     refresh = "r",
        --     open = "<M-CR>",
        -- },
        -- layout = {
        --     position = "bottom", -- | top | left | right
        --     ratio = 0.4,
        -- },
    },
    suggestion = {
        enabled = false,
        -- auto_trigger = true,
        -- debounce = 75,
        -- keymap = {
        --     accept = "<c-x>",
        --     accept_word = false,
        --     accept_line = false,
        --     next = "<c-j>",
        --     prev = "<c-k>",
        --     dismiss = "<C-e>",
        -- },
    },
})
