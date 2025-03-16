-- mescolare le linee selezionate
-- :Random
function ShuffleLinesRange(start_line, end_line)
    local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)
    math.randomseed(os.time())
    for i = #lines, 2, -1 do
        local j = math.random(i)
        lines[i], lines[j] = lines[j], lines[i]
    end
    vim.api.nvim_buf_set_lines(0, start_line - 1, end_line, false, lines)
end

vim.api.nvim_create_user_command('Random', function(opts)
    local start_line = opts.line1
    local end_line = opts.line2
    ShuffleLinesRange(start_line, end_line)
end, { range = true })

