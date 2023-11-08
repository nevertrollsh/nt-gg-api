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
