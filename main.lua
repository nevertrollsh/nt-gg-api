--- Main API
float = 16
dword = 4
word = 2
auto = 127
byte = 1
double = 64
qword = 32
default_results = 100

local function isArr(tbl)
 
    if type(tbl) == "table" then
        local length = #tbl
        for i = 1, length do
            if tbl[i] == nil then
                return false
            end
        end
        return true
    else
        return false
    end
  
end

function search(value, type)
 gg.searchNumber(value, type)
end

function edit(v, t)
 gg.getResults(default_results)
  gg.searchNumber(v, t)
end

function menu(options, type, description)

  if isArr(options) then


  
  if description == nil then
local d = false

      if type == 1 then
       gg.choice(options)
      elseif type == 2 then
        gg.multiChoice(options)
      else
       error("type in menu() is invalid. It must be either 1 or 2")
        
      end
    

  else
local d = true
 
      if type == 1 then
       gg.choice(options,nil,description)
      elseif type == 2 then
        gg.multiChoice(options,nil,description)
      else
       error("type in menu() is invalid. It must be either 1 or 2")
        
      end

      
  end


  else

    error(options.. "is not a proper table for menu() function. Correct Usage of menu(): menu({"Option 1","Option 2"},1,"Description, optional"))

  end
end
end
