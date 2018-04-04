# context.coffee

require './function-fe'
util = require './function-be'

command = do global.foo
show = console.log
scope = "Now Coffee compiler generating context.js (ES5) function..."
show scope
show "global.foo = -> return 'bar' =  " + command
show "exports.square = (x) -> x + x = " + util.square(5)

# eof