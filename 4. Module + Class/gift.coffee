# 4. Modules and Classes
# 4.2 The Power of Prototypes: ABSTRACTION

# When we use 'new', several things happened:
# 	a new object is created, that object is given the prototype from the constructor,
#		and the constructor is executed (in the new object's context).

# So let's say we want every new object to store the namee and announce the existing of gifts:
# INTERFACE
Gift = (@name) ->
  Gift.count++
  @day = Gift.count
  @announce()
  
Gift.count = 0
Gift::announce = ->
  console.log "On day #{@day} of Chritmas I received #{@name}"

# IMPLEMENT
gift1 = new Gift('a partride of a pear tree')
gift2 = new Gift('two turtle doves')

###
Each time the Gift constructor runs, it does four things:
	1. assigns the given name to @name (using the agrigment shothand)
	2. increments the 'count' property on the Gift constructor,
	3. copies that value to @day, and 
	4. runs the @announce function inherited from the prototype.

The important to notice here is that all of the function on the new object
runs in the context of the object (receiver!).

This is all well and good, but it's MESSY! (with ES5 grammer)

What's the clean way of distinguishing CONSTRUCTOR PROPERTIES (like Gift.count) 
from PROTOTYPE PROPERTIES (Gift::announce)? And of distinguishing constructors
from ordinary functions? Well, it's Classes: Functions with Prototypes: ENCAPSULATION
###

# eof