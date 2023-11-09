# Code Snippets
These are examples of how each function of the API works.
[Back to README.md](./README.md)

## Main API's Codes

search(value, type)
```lua
search("10", dword) --- This will search the number 10 as Dword.

search("20", byte) --- This will search the number 20 as Byte.
```

edit(value, type)
```lua
search("10", float) --- Searches 10 as float.
edit("9999", float) --- Edits it as 9999 float. Results is set to be max 100 by default. It can be changed though.
```

freeze(resultsNum)
```
--- This whole code searches the number 15 as Float, edits it to 200 and freezes the 100 first values.

search("15", float)
edit("100", float)
freeze(100) 
```



## NTDatabase Codes

One Time Password Script:
```lua
import("ntdatabase") --- This imports the package called ntdatabase which is required.

function HOME()
 gg.alert("Welcome to the Script! You entered the correct password.")
end

db.load()
if db.get("pass") == "1234" then
HOME()
else
pw = gg.prompt({"Enter Password:"})
if pw[1] == "1234" then
db.save("pass","1234")
else
gg.alert("Wrong Password!")
os.exit()
end
end
```
