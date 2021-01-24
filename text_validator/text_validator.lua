local M = {}

local valid_letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_"

function M.validate_display_name_letter(letter)
	return string.find(valid_letters, letter) ~= nil
end

function M.validate_display_name(display_name)
	for c in display_name:gmatch"." do
		if string.find(valid_letters, c) == nil then
			return false
		end
	end
	return true
end

return M