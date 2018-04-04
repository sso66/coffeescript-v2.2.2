# Pattern Matching (or Destructuring Assigments)

show = console.log

# In JavaScript, assignment is a strict one time affair. If you had a list
# of values that you wanted to transfer to the list of variables (scopes), you'd
# probably write CUSTOM function. In CoffeScript (as in ES6), you can juise write
# one line of code:

list = [firstName, middleInitial, lastName] = ['Joe', 'T', 'Plumber']
show list
show "What is the value of the list? " + list
#
# Array/List Pattern Matching: The square bracket on the LEFT side of the assignment
# aren't really creating an array, after all. Instead, it's just describing (annotating)
# a "pattern" of variables (scopes) that the array on the RIGHT side fills in (the values).
# The line above is equivalent to this.
# firstName = 'Joe'; middleInitial = 'T'; lastName = 'Plumber';
#
# For one thing, you can reference the SAME vairables on both sides
# of the assignment (variables=values), making swaps a one-line affair instead
# of three line chore:
newBoss = "Karen"
oldBoss = "Stephen"
[newBoss, oldBoss] = [oldBoss, newBoss]
show [oldBoss, newBoss]
show [newBoss, oldBoss]
#
# Use splats the same way that we used them in function definitions
topStudents = ['John', 'Paul', 'George', 'Ringo']
students = [theBest, theRest...] = topStudents
show students
for student in students
	show student
#
show "array (ordered) pattern matching by copy vs. object (unordered) pattern by reference"

myRect =
  x: 100
  y: 200 
  
show 'key and variable diff name:'
{x: myX, y: myY} = myRect
show "object pattern " + myRect.x + ',' + myRect.y
show 'key and variable same name:'
{x: x, y: y} = myRect
show "object pattern " + myRect.x + ',' + myRect.y
#
# Again, the "object" on the LEFT side of the assignment isn't really an object,
# it's a pattern, providing keys and variables names to match these keys. So
# this is equivalent to the following
# myX = myRect.x; myY = myRect.y
# If you want just want to copy rect.x and rect.y to local varials named x and y,
{x, y} = myRect
show "object pattern - short-circuted: " + myRect.x + ',' + myRect.y
show "This syntax will change the way you read properties from objects FOREVER"

# In Node.js assert module for testing, we want to use the 'assert.ok' and 
# 'assert.strictEqual methods, we can load them as variables call 'ok' and 
# 'strictEqual' by writing this:
{ok, strictEqual} = require 'assert'

# eof 