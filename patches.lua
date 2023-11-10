function hexpatch(lib, offset,hex)

gg.setVisible(false)
local targetAddr = 0
local hexStrCount = #hex:gsub(" ", "")
if hexStrCount%2~=0 then return print("Check your hex again. Something wrong there") end 
local hexCount = hexStrCount/2



 for i, v in ipairs(gg.getRangesList(lib)) do

if v.type:sub(3,3) == "x" then targetAddr=v.start+offset break end 
end
local editHex = {}
for i=1, hexCount do
editHex[i] = {address=targetAddr+(i-1), flags=gg.TYPE_BYTE}
end
gg.loadResults(editHex)
gg.getResults(hexCount)
local edit = "h"..hex
gg.editAll(edit,1)
gg.clearResults()
end
