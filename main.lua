--- Main API
float = 16
dword = 4
word = 2
auto = 127
byte = 1
double = 64
qword = 32
default_results = 100


  


function search(value, type)
 gg.searchNumber(value, type)
end

function edit(v, t)
 gg.getResults(default_results)
  gg.searchNumber(v, t)
end

function freeze(n)
 if type(n) ~= "number" then error("In freeze(), there should be a number like this: freeze(10)") end
  fvs = gg.getResults(n)
  for i,v in pairs(fvs) do
gg.freeze = true
  end

  gg.addListItems(fvs)
end
