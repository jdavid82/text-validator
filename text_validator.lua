local M = {}

local valid_letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_"

function M.validate_display_name_letter(letter)
    return string.find(valid_letters, letter) ~= nil
end

return M