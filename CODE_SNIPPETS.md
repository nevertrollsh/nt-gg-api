# Code Snippets
These are examples of how each function of the API works.
[Back to README.md](./README.md)

## Main Functions

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
