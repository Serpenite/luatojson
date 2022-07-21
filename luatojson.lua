-- This script is designed to convert Lua tables to JSON data format
-- Using: luatojson filename.lua filename

local json = require "json"
local utils = require "utils"

function start()
	local filename = arg[1]
	if filename then
		if file_exists(filename) then
			local input_file = dofile(filename)
			if input_file then
				local output = arg[2] or string.sub(filename, 1, -5)..".json"
				local output_t = json.encode(input_file)
				local output_file = io.open(output, "w")
				output_file:write(output_t)
				output_file:close()
				print("Successful conversion!")
			else
				print("This is not a Lua file!")
			end
		else
			print("File "..filename.." does not exist.")
		end
	else
		print("luajit filename.lua (outputfilename)")
	end
end

start()