# pet.js
console.log 'Inheritance with extends'

class Pet
	constructor: -> @isHungry = true
	eat: -> @isHungry = false
	
class Dog extends Pet
	eat: ->
		console.log "*crunch, crunch*"
		super()
	fetch: ->
		console.log "Yip, yip!"
		@isHungry = true
		
dog = new Dog();
dog.eat()
dog.fetch()
#eof