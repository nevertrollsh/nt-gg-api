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
 
 if v == "ntdatabase" then
 loadContent("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/ntdatabase.lua")
 print("Loaded package: 'ntdatabase'\n")
 end
 
 if v == "random" then
  
  print("Library random was not loaded due to undeveloped code.")
 end
 
 if v == "patches" then
 loadContent("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/patches.lua")
 print("Loaded package: 'patches'\n")
 end
 
 
 
 
 end
end
  
