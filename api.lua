nt = {}

libraries = {"math.lua","random.lua","strings.lua'}

  for i,v in pairs(libraries) do
    
    if v == "math.lua" then

    end

    if v == "random.lua" then
    
    end

    if v == "strings.lua" then

    end

    
  end

  mainapi = gg.makeRequest("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/main.lua").content

  pcall(load(mainapi))
