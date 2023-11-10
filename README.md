# NT's GG API
NT's GG API is an API for GameGuardian to make GameGuardian Scripts easier. It comes with various functions and a database.

## API Information
* Name: NT's GG API
* Version: 4.0
* Author: NeverTrolls (nevertrollsh)
* Credits: Thanks to Deficas, freeze Function is possible.

## Version 4.0
This version adds two libraries called `fancymenus` and `patcher`. The new library, `patcher` is similar to our package `patches`.
Added/Fixed the library called `random`.


## How to use?
To use this API, you'd need to put this at the top of your code:

Method 1
```lua
api = gg.makeRequest("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/api.lua").content
pcall(load(api))
```
Method 2 (Not Recommended)
```lua
api = gg.makeRequest("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/api.lua").content

local file = io.open("api.lua","w")
if file then
 file:write(api)
 file:close()
else
 error("Failed to find file")
end

dofile("api.lua")
```
WARNING: If you put this code at the bottom of your script, It will not work. So, make sure to put this code at the top of your script.\
PS: This makes your script online and requires users to have their WiFi turned on.

# Functions
These are the functions. If you want to learn to use them correctly, you may want to see some [Code Snippets](./CODE_SNIPPETS.md).

## Main API
The API that is going to be used mainly and includes GG function name shortening.
| Function | Usage | Params |
|----------|-------|--------|
| search(value, type) | Searches a value under a type. | value: string, type: int |
| edit(value, type) | Edits the results to a value under a type. | value: string, type: int |
| freeze(resultNum) | Freezes all the results. Make sure to use edit function before this. | resultNum: number |

## Import
You can now import libraries and packages using the import(pkg) function. It was not mentioned in the Main API because it is not the part of the Main API.

Here is an example of loading the ntdatabase package using the import function.
```lua
--- ntdatabase is no longer a part of the API, you can still use it by importing it though!
--- To get the list of all the packages/libraries that you can import, you can use import(-1) to view all the packages/libraries.

import("ntdatabase") --- This imports ntdatabase.

db.save("variable","The variable's value.")
db.load()
print(db.get(variable))
```

### Libraries/Packages
Libraries and Packages that you can import using the import function.
| Lib/Pkg | Usage |
|---------|-------|
| ntdatabase | NTDatabase is used to store variables in a file and use them later anytime. You can retain the variable's original value even if the script is restarted. |
| patches | Patches allows you to hex patch offsets in GameGuardian. It can make your script significantly faster. |
| patcher | Patcher is an user-made library similar to patches. |
| random | Random is a library that adds many random functions including random.text, random.string and more! |
| fancytoasts | FancyToasts attempts to make GameGuardian's toasts fancy. |
| fancymenus | FancyMenus makes GameGuardian's menus better and good looking. |
| random | A bunch of functions related to randomness. |
