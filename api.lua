nt = {}
nt_version = "2.0"
mainapi = gg.makeRequest("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/main.lua").content

libs = {"ntdatabase","random","patches"}

function loadContent(cont)
 local loading = gg.makeRequest(cont).content
 pcall(load(loading))
end

function import(pkg)
 for i,v in pairs(libs) do
 
 if pkg == "ntdatabase" then
 loadContent("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/ntdatabase.lua")
 
 end
 
 if pkg == "random" then
  
  
 end
 
 if pkg == "patches" then
 loadContent("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/patches.lua")
 
 end
 
 
 
 
 end
end
  
