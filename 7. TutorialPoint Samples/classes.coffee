# classes.coffee

class Animal
	constructor: (@name) ->
	price: 100
	#sell: () -> @price 
	sell: (@price) -> @price
		 #console.log "Sold at $#{@price} dollars!"
	
	
animal = new Animal("Parrot")
console.log "Animal is a #{animal.name}"

console.log "The animal sold at " + animal.sell 50
