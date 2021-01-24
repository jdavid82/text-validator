local M = {}

local valid_letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_"

function M.validate_display_name_letter(letter)
	if letter == "%" then
		return false
	end
	return string.find(valid_letters, letter) ~= nil
end

function M.validate_display_name(display_name)
	local c
	for i = 1, string.len(display_name) do
		c = string.sub(display_name, i, i)
		if c == "%" then
			return false
		end
		if string.find(valid_letters, c) == nil then
			return false
		end
	end
	return true
end

return M