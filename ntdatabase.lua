db = {}

if db.storage == nil then db.storage = "database.dat" end

local file_path = "database.dat"

-- Check if the file exists
local file = io.open(file_path, "r")

if file then
    -- The file exists, so close it
    file:close()
else
    -- The file doesn't exist, create it
    file = io.open(file_path, "w")
    if file then
        file:close()
        print("File created successfully.")
    else
        print("Failed to create the file.")
    end
end



function db.save(varName, value)
    local fileName = db.storage
    
    -- Open the file in read mode
    local file = io.open(fileName, "r")

    if file then
        local data = file:read("*all")
        file:close()

        -- Check if the variable already exists
        local pattern = varName .. " = \"[^\"]+\""

        if not data:match(pattern) then
            -- If the variable doesn't exist, add it to the end of the file with double quotes
            data = data .. "\n" .. varName .. " = \"" .. value .. "\""
        else
            -- If the variable exists, find and replace the old value
            data = data:gsub(pattern, varName .. " = \"" .. value .. "\"")
        end

        -- Open the file again in write mode to overwrite it
        local file = io.open(fileName, "w")
        file:write(data)
        file:close()
    else
        print("Failed to open the file for reading.")
    end
end

function db.load()
 dofile(db.storage)
end

function db.get(v)
    local file = io.open("database.lua", "r")
    
    if file then
        local content = file:read("*all")
        io.close(file)
        local pattern = v .. "%s*=%s*\"([^\"]+)\""
        local result = string.match(content, pattern)

        return result or "Variable not found"
    else
        return "Error opening file"
    end
end

db.edit = db.save
