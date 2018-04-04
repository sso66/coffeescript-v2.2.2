console.log 'Property Arguments (@args) & Default Arguments (args =)\n'

console.log '___ Property Arguments (@arg) ___'
# shorthand: sender and receiver same name
setName = (@name) -> # no code required! but, can have issue with compiler?
cat = {} 
cat.setName = setName
cat.setName 'This cat name/@name is Ms. Mittens' # setter/mutator
console.log cat.name # getter/accessor
#
# Quite simply, when @ precedes the name of an argument to a function, the
# function automatically makes the assignment from the argument (sender parameter)
# to the property of the context (receiver) object, 'this'. This is great for
# constructor functions. Re: ES6 Modules and Classes 
#
console.log '___ Default arguments (arg =) ___'
# You have a function, wher one of the its arguments is going to have one particular
# value most of the time.
ringFireAlarm = (isDrill) ->
	# is pretty much always a drill - the shorthand
  isDrill = true unless isDrill?
# modified with ? existential operater and it's short for checking (prop/state?) that 
# the given value [1] exists in this scope and [2] isn't 'undefined' or 'null'
 
ringFireAlarm = (isDrill) ->
  isDrill ?= true
  
ringFireAlarm = (isDrill = true) ->
#
# Function Object
chooseMeals = (breakfast = 'waffles', lunch = 'gyros', dinner = 'pizza') ->
 console.log 'Breakfast: ' + breakfast
 console.log 'Lunch: ' + lunch
 console.log 'Dinner: ' + dinner
#
# Context Object
chooseMeals null, 'burrito', null
chooseMeals 'becon and eggs'
chooseMeals false, "none", 'hambuger'

# eof 