# hansel.coffee
###
verb = ->
  "do something"

noun = ->
  console.log "it's something"

console.log do verb 
console.log noun()
###
hansel = (x, y) ->
  #console.log hansel.caller()
  console.log "arguments: " + hansel.arguments.length
  
  console.log x + y
  console.log x - y
  console.log x * y
  console.log x / y
  console.log x % y

hansel(10, 20)

console.log "arity: " +  hansel.arity