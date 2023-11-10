random = {}

function random.number(a,b)
if type(a) == "number" and type(b) == "number" then
 
 return math.random(a,b)

else
 return nil
end
end
random.int, random.value = random.number

function random.bool()
 local bool = {true,false,true,false,true,false,true,false,true,false}
 return bool[math.random(1,#bool)]
end
random.boolean, trueorfalse = random.bool

function random.choice(...)
 local r = {...}
 
 return r[math.random(1,#r)]
end
random.text, random.word, random.phrase = random.choice

function random.string(n)

    if n == nil then n = 1 end
    local characters = {"A", "B", "C", "D", "E", "F", "G", "H", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "S", "t", "u", "v", "w", "x", "y", "z","a", "b", "c", "d", "e", "f", "g", "h", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "s", "T", "U", "V", "W", "X", "Y", "Z"}
    local result = ""

    for i = 1, n do
        local randomIndex = math.random(#characters)
        result = result .. characters[randomIndex]
    end

    return result
end
random.chars, random.characters = random.string

function random.shuffle(tbl)
    local n = #tbl
    for i = n, 2, -1 do
        local j = math.random(i)
        tbl[i], tbl[j] = tbl[j], tbl[i]
    end
    return tbl
end
table.shuffle, random.shuffleTable = random.shuffle

function random.color()
    local r = math.random(0, 255)
    local g = math.random(0, 255)
    local b = math.random(0, 255)
    return {r, g, b}
end
random.rgb, random.hue = random.color

function random.uuid()
    return string.format("%08x-%04x-%04x-%04x-%012x", 
        math.random(0xFFFFFFFF), math.random(0xFFFF),
        math.random(0xFFFF), math.random(0xFFFF),
        math.random(0xFFFFFFFFFFFF))
end
random.uid, random.id = random.uuid

function random.seed(seed)
 math.randomseed(seed)
end
