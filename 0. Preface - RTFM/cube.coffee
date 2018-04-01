# cube.coffee
# coffee (compile) -> ES5
# coffee (decafeinate) -> ES6

###
	JavaScript Design Patterns:
	1. Creational
	2. Structural
	3. Behavioral 
	4. Interaction
	5. Presentation
###

# Create 
cube = (num) -> Math.pow num, 3

# Collect
list = [1,2,3,4,5]

# Iterate & Store
cubeList = [cube num for num in list] # get list items
console.log cubeList # get structure of the list
console.log cubeList.toString() # get stringified items
console.log 'Cube List: ' + cubeList # get concatenated items

# Iterate & Display
console.log cube num for num in list