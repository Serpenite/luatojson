local utils = {}

function file_exists(filepath)
	local is_exists = false
	local file = io.open(filepath, 'r')
	
	if file then
		is_exists = true
		file:close()
	end

	return is_exists
end

return utils