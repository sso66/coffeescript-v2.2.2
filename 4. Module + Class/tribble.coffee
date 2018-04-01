# 4. Modules and Classes
# 4.3 Classes: Functions with Prototypes: ENCAPSULATION
###
# Abstraction
CoffeeScript's class declaration syntax looks just like object declaration
syntax. That's no coincidance; when you're defining a CLASS, you're defining
an OBJECT. Specifically, you're defining a PROTOTYPE. (COP).The only CLASS 
property that isn't part of the PROTOTYPE is the consturctor function.

# Application:
Each time a new tribble is created, Tribble.count is increased by one. (We can
call @count here because the value of 'this' in the class body is the class 
'this' itself.)

When Tribble.makeTrouble is called, it'll display "Trouble" count times. 
###
# @interface
class Tribble
  constructor: ->
    @isAlive = true
    Tribble.count++   
  # PROTOTYPE properties
  breed: -> new Tribble if @isAlive
  die: ->
    Tribble.count-- if @isAlive
    @isAlive = false   
  # CLASS properties
  @count: 0
  @makeTrouble: -> console.log ('Trouble!' for i in [1..@count]).join(' ')
    
# @implementation    
tribble1 = new Tribble
tribble2 = new Tribble
Tribble.makeTrouble()

### 
Notice that Tribble.count is referred to as @count in the Tribble class context but
not with Tribble methods.

This is a little baffling firts, but remember that there are three objects we're 
dealing with here:
	- the tribble itself (which is actually the constuctor function,
	- tribble.prototype, and the
	- Tribble instance.
	
By default, Tribble properties (other than constructor) are attached to the PROTOTYPE.
Wnen we use the @ prefix, were insisting that we want to attach the property to the
CLASS object itself.

Because the functions attached to the PROTOTYPE are invoked in the context of the 
individual object (as in the constructor), variables prefex with @ within those are 
referencess to instance (object) properties. This is why we define @isAlive in the
constructor; we need to attach a separate @isAlive property to each instance (object. 
That let us do this:
###
tribble1.die()
Tribble.makeTrouble()

###
Killing tribble1 off again would have no effect, thanks to the if @isAlive check.
And we know, tribbles are born pregant, so it won't be long before the species 
repopulates our program:
###
tribble2.breed().breed().breed()
Tribble.makeTrouble()

# eof