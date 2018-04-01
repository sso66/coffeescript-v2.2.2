# throws.coffee
### throws.js ###

myFunc = ->
  a = 100
  b = 0
  try
    if b == 0
      throw "Divided by zero error"
    else 
      c = a / b
  catch e
    console.log e
    
myFunc()