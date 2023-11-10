nt = {}
nt_version = "3.0"
mainapi = gg.makeRequest("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/main.lua").content
pcall(load(mainapi))


libs = {"ntdatabase","random","patches","fancymenus","fancytoasts"}

function loadContent(cont)
 local loading = gg.makeRequest(cont).content
 pcall(load(loading))
end

function import(pkg)
 
 
 if pkg == "ntdatabase" then
 loadContent("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/ntdatabase.lua")
 
 end
 
 if pkg == "random" then
 end

 if pkg = "fancymenus" then
 loadContent("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/fancymenus.lua")
 end
 
 if pkg == "patches" then
 loadContent("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/patches.lua")
 
 end

 if pkg == "fancytoasts" then
 loadContent("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/fancytoasts.lua")
 end
 
 
 
 
end
  
