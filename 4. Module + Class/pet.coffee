# 4. Modules and Classes
# 4.4a Inheritance with 'extends': INHERITANCE

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