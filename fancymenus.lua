fm = {
 name = "Fancy Menus",
 version = "1.0",
 creator, author = "NeverTrolls",
 functions = "4"
}

menuexamples = '\nFancyMenus | Examples'

function fm.checkbox(options)
 if options == nil then print(menuexamples) os.exit() end
    local defaultValues = {}

    for i, _ in ipairs(options) do
        defaultValues[i] = false
    end

    local types = {}
    for i = 1, #options do
        types[i] = 'checkbox'
    end

    local result = gg.prompt(options, defaultValues, types)
    return result
end
fm.checkboxMenu, fm.Checkbox, fm.menu1 = fm.checkbox

menuexamples = menuexamples.. '\n\nCheckbox Menu:\nfm.checkboxMenu({"Option 1","Option 2","Option 3"})'


function fm.menu1(options,cmsg)
 local opt = options
 local res = {}
 
 for i,v in pairs(options) do
 if i == 1 then
 res[i] = "▶ " ..v
 elseif i == #options then
 res[i] = "▶ " ..v
 else
 res[i] = "▶ " ..v
 end
 end
 
 if type(cmsg) == "string" then
 line = ""
 for i = 1,#cmsg do
 if i > #cmsg / 2.8 then
 line = line.. "═"
 end
 end
 emsg = "╔" ..line.. "╗\n⦿ " ..cmsg.. "\n╚" ..line.. "╝"
 end
 if type(emsg) == "string" then result = gg.choice(res,nil,emsg) else result = gg.choice(res) end
 return result
end
fm.design1, fm.pointermenu = fm.menu1

menuexamples = menuexamples.. '\n\nPointer Menu\nfm.pointermenu({"Option 1","Option 2"},"Custom Message.")'


function fm.menu2(options,cmsg)
 local opt = options
 local res = {}
 
 for i,v in pairs(options) do
 if i == 1 then
 res[i] = "〇 " ..v
 elseif i == #options then
 res[i] = "〇 " ..v
 else
 res[i] = "〇 " ..v
 end
 end
 
 if type(cmsg) == "string" then
 line = ""
 for i = 1,#cmsg do
 if i > #cmsg / 2.8 then
 line = line.. "━"
 end
 end
 emsg = "┃" ..line.. "┃\n⦿ " ..cmsg.. "\n┃" ..line.. "┃"
 end
 if type(emsg) == "string" then result = gg.choice(res,nil,emsg) else result = gg.choice(res) end
 return result
end
fm.design2, fm.circlemenu = fm.menu2

menuexamples = menuexamples.. '\n\nCircle Menu\nfm.circlemenu({"Option 1","Option 2"},"Custom Message.")'

function fm.make(options,cmsg,lin,sep)
 local opt = options
 local res = {}
 
 for i,v in pairs(options) do
 if i == 1 then
 res[i] = "〇 " ..v
 elseif i == #options then
 res[i] = "〇 " ..v
 else
 res[i] = "〇 " ..v
 end
 end
 
 if type(cmsg) == "string" then
 line = ""
 for i = 1,#cmsg do
 if i > #cmsg / 2.8 then
 line = line.. "" ..lin
 end
 end
 emsg = sep.. "" ..line.. 
 .sep.. "\n⦿ " ..cmsg.. "\n" ..sep.. ..line.. ..sep..
 end
 if type(emsg) == "string" then result = gg.choice(res,nil,emsg) else result = gg.choice(res) end
 return result
end
fm.create, fm.customMenu, fm.createMenu, fm.makeMenu = fm.make

menuexamples = menuexamples.. '\n\nCustom Menu\nfm.make({"Option 1","Option 2"},"Custom Message.","=","|")'
