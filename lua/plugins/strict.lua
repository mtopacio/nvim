return {
    'emileferreira/nvim-strict',
    config = function()
        require('strict').setup({
            overlong_lines = {
                split_on_save = false,
                hard_wrap = false,
                length_limit = 88,
            },
            trailing_whitespaces = {
                remove_on_save = false
            },
            trailing_empty_lines = {
                remove_on_save = false
            }
        })
    end
}
