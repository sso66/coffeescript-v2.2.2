# factorial.coffee
### factorial.js ###
factorial = (n) ->
  if n > 0
    n * factorial(n - 1)
  else
    1

# The factorial for the value of 5 = 5 * 4 * 3 * 2 * 1
console.log factorial(5) 
console.log factorial(4) 
console.log factorial(3) 
console.log factorial(2) 
console.log factorial(1) 
console.log factorial(0) 

# eof