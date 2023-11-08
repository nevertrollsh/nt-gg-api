# NT's GG API
NT's GG API is an API for GameGuardian to make GameGuardian Scripts easier. It comes with various functions and a database.

## How to use?
To use this API, you'd need to put this at the top of your code:
```lua
api = gg.makeRequest("https://raw.githubusercontent.com/nevertrollsh/nt-gg-api/main/api.lua").content
pcall(load(api))
```
WARNING: If you put this code at the bottom of your script, It will not work. So, make sure to put this code at the top of your script.
PS: This makes your script online and requires users to have their WiFi turned on.

# Functions

## Main API
The API that is going to be used mainly and includes GG function name shortening.
| Function | Usage | Params |
|----------|-------|--------|
| search(value, type) | Searches a value under a type. | value: string, type: int |
| edit(value, type) | Edits the results to a value under a type. | value: string, type: int |
| menu(options, type, description(optional)) | Creates a menu. Scroll down to view further indormation about this. | options: table, type: int(1, or 2), description: string |

## Database API
| Function | Usage | Params |
|----------|-------|--------|
| db.save(variable, value) | Saves a variable to the database. | variable: string, value: string |
| db.get(variable) | Gets a variable from the database. | variable: string |
