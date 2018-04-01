# 4. Modules and Classes
# 4.4b Polymorphism and Switching': POLYMORPHISM - Dynamic Method Invocation: 
# The concept of OOP interface <<shape>>

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

# eof