# exceptions.coffee
### exceptions.js ###

try 
  #y = 2
  x = y * 64
  console.log "The value of x is: " + x
catch e
  console.log "\nThe STACKTRACE for the exception/error:"
  console.log e.stack
finally
  console.log "\nThis is the statement execution of finally block." 
