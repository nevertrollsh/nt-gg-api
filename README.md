# NT's GG API
NT's GG API is an API for GameGuardian to make GameGuardian Scripts easier. It comes with various functions and a database.

# Functions

## Main API
The API that is going to be used mainly and includes GG function name shortening.
| Function | Usage |
|----------|-------|
| search(value, type) | Searches a value under a type. |
| edit(value, type) | Edits the results to a value under a type. |
| menu(table, type, description(optional)) | Creates a menu. Scroll down to view further indormation about this. |

## Database API
| Function | Usage |
|----------|-------|
| db.save(variable, value) | Saves a variable to the database. |
| db.get(variable) | Gets a variable from the database. |
