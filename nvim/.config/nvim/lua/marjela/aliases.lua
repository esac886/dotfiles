function string.insert(str, substr, pos)
    return str:sub(1, pos - 1) .. substr .. str:sub(pos)
end

local function align_lines_by_regex(lines, regex)
    local max_len_before_rgx = 0
    for _, line in ipairs(lines) do
        local line_len = string.len(line:sub(1, string.find(line, regex)))
        if line_len > max_len_before_rgx then
            max_len_before_rgx = line_len
        end
    end

    local result = {}

    for _, line in ipairs(lines) do
        local regex_pos = string.find(line, regex)
        local line_len = string.len(line:sub(1, regex_pos))
        if line_len < max_len_before_rgx then
            line = string.insert(line, string.rep(" ", max_len_before_rgx - line_len), regex_pos)
        end

        table.insert(result, line)
    end

    return result
end

-- command for regex align
vim.api.nvim_create_user_command('Align', function(opts)
    local regex = opts.args

    local start_line = opts.line1
    local end_line = opts.line2
    local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)

    local result = align_lines_by_regex(lines, regex)

    vim.api.nvim_buf_set_lines(0, start_line - 1, end_line, false, result)
end, {
    nargs = 1,
    range = true,
})
