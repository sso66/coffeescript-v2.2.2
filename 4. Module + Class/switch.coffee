# 4. Modules and Classes
# 4.4b Polymorphism and Switching': POLYMORPHISM  
# Implementation of switch/when/else (ES6) from switch/case/default (ES5) polymorphic behaviors

###
	We haven't talk about ES6?CoffeeScript's 'switch' yet, and there are number
	of differences between it and JavaScript's(ES5):
		- first, there's an implicit break clauses to prevent unintended "fall through";
		- second, the result of the switch is returnd.
	(When the return value is used; the break (clause) and return (statement'
	 are NOT ALLOWED. If you try, 
	 you'll get SyntaxError: cannot include a pure statement in an expression. This
	 is jargon for saying that it doesn't make sense to say a = return.x, so the 
	 compiler won't allow it as a posibility.)	

	Here is the factory function:
	In JavaScript, any function can return a new object. 
	When it’s not a constructor function or class, it’s called a factory function.
###
	
requisitionStarship = (captain) ->
  switch captain
    when 'Kirt', 'Picard', 'Archer'
      # new Enterprise()
      console.log 'Enterprise function'
    when 'Janeway'
      # new Voyager()
      console.log 'Voyager function'
    else
       #throw new Error('Invalid starship captain')
       try
          console.log 'Invalid starship captain'
       catch e
          console.log e


requisitionStarship 'Kirk'
requisitionStarship 'Picard'   
requisitionStarship 'Archer'
requisitionStarship 'Stephen'
requisitionStarship 'Janeway'

console.log 'Ref: Conditional and Exceptions'

# eof 
 	