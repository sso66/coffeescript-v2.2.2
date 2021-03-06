# 4. Modules and Classess 
# 4.4a Inheritance with 'extends': INHERITANCE - Runtime Type Info (RTTI) meta programming
# concept of OOP class/abstract class 
###
So far, we've talked about how PROTOTYPES make it easy to share functionality across a set
of objects and how CoffeeScript's CLASSES provide a useful syntax for bundling PROTOTYPE
properties together. And if that were all CLASSES did, they'd be mindly useful. But where
CLASSES really shine is when we want to use inheritance.

JavaScript supports inheritance through somethig call "prototype chains". Let say, A's
PROTOTYPE, B, has is own PROTOTYPE, C. Then we write this:
	a new A
	console.log a.flurb()

First, the runtime checks to see if the particular A instance, a has a property flurb;
if not it checks A's PROTOTYPE (B); and if that still no dice, it checks B's PROTOTYPE (C).
In short, it travasing the PROTOTYPE chain (Chain of Responsibility Design Pattern).

What happens if C has no flurb either? Then the runtime checks the default object prototype
(that is the PROTOTYPE of {} "JS Object prototype"). So every PROTOTYPE inherits frm {}'s 
prototype, but there may be other prototype in between.

All of this assigning prototypes to protypes to prototypes get a little messy. That's
where CoffeeScript's (albeit ES6) 'extends' keyword comes in.

Let's make a declaration:
	class B extends A
	
Then, B's prototype inherits from A's prototype.In addition, A's class-level PROPERTIES are 
copy over to B. If we left the definition of B alone, B instances would have exactly the same
behavior as A instances. (There is one exception: B.name would be 'B' while A.name would be 
'A'--name is a special property).
###

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

###
The constructor from Pet is inherited by Dog., which means that dogs start out hungry.
When a dog eats, ti makes some noises and then invokes super(), which means "call the 
method of the same name on PARENT class." (More precisely, it means Pet::eat.call this.)
Then the do is no longer hungry.

If the constructor is defined on the CHILD class, then it overrides the constructor from
PARENT class. It can invoke the PARENT constructor at any time using super(). It's usually
wise to call super() (or, more likely, super--'super' isn't super()) Side noted below:

What's wrong with this code?

class Appliance
	constructor: (warranty) ->
		warrantyDb.save(this) if warranty

class Toster extends Appliance
	constructor: (warranty) ->
		super()

###		

#eof