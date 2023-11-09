nt = {}

libraries = {"math.lua","random.lua","strings.lua"}
nt_version = "2.0"




  patches= gg.makeRequest("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/patches.lua").content
  mainapi = gg.makeRequest("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/main.lua").content
  dbapi = gg.makeRequest("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/ntdatabase.lua").content
  pcall(load(mainapi))
  pcall(load(dbapi))
  pcall(load(patches))
