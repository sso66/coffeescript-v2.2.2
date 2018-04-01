# myunction.coffee

### define ###
#myFunction = () ->
myFunction = ->
  console.log 'do some work here'
  
### invoke ###
myFunction()

### define ###
myFunction = new Function()
### invoke ###
console.log myFunction.scope = 'do some work anywhere'

### define ###
myFunction = -> console.log 'do some work there'
### invoke ###
myFunction()