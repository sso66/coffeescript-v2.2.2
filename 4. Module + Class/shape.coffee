# 4. Modules and Classes
# 4.4b Polymorphism and Switching': POLYMORPHISM - Dynamic Method Invocation: 
# The concept of OOP interface <<shape>>

###
	One great use of CLASSES is polymorphism, which is OOP term for 'a thing can be
	a lot of different things (to know and/or to do), but not just ANY thing:
###

class Shape
  constructor: (@size) ->
  computeArea: -> throw new Error('I am an abstract class!')

class Square extends Shape
  computeArea: -> Math.pow @size, 2

class Circle extends Shape
  radius: -> @size / 2
  computeArea: -> Math.PI + Math.pow @radius(), 2

showArea = (shape) ->
  unless shape instanceof Shape
    throw new Error('showArea requries a Shape instance!')
  console.log shape.computeArea()
  
showArea new Square(2)
showArea new Circle(2)

###
	Notice that the showArea function checks that the object passed to its Shape
instance of (using the 'instanceof' keyword). But it doesn't care what kind of
shape it's been given; both Square and Circle instances will work. While this
is a trival example, it's not to imagine a rich geometry library (framework) that
take this approach.

	If we didn't use the 'instanceof' check, that would be know as "duck typing"
(as in "if it looks like a duck..."). If the target object doesn't have 
computeArea function, then we'll get a meaningful error message anyway. Duck
typing is great, but there are times when you want to be sure that a particular
or specific object is what you think is (or may be not!).

	A common idiom in more classical object-oriented languages is to use with switch.
Ref. switch.coffee example
###

# eof