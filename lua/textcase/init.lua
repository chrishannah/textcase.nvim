local M = {}

M.formatText = function(input, format)
    local Job = require("plenary.job")

    local output = input
    Job:new({
        command = "textcase",
        args = {
            "--format", format,
            "--input", input
        },
        cwd = "/usr/bin",
        on_stdout = function (_, data, _)
            output = data
        end
    }):sync()

    return output
end

return M
