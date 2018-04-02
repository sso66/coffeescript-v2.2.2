# context.coffee

require './scope'
util = require './util'

scope = do global.foo
show = console.log

show "Now Coffee compiler generating context.js (JavaScript) function..."
show "global.foo = -> return 'bar' =  " + scope
show "exports.square = (x) -> x + x = " + util.square(5)

# eof