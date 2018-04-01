message = "Sum of two numbers is "
show = console.log

# @ abstract
add = (a, b) =>
	return c = a + b

subtract = (a = 1, b = 1) ->
	return c = a - b
	
multiply = (a = 1, b = 1) ->
	return c = a * b
	
divide = (a = 1, b = 1) ->
	return c = a / b

remainder = (a = 1, b = 1) ->
	return c = a % b

# @ implement
c = add(1, 2)
show message + c

c = subtract(1, 2)
show message + c

c = multiply(1, 2)
show message + c

c = divide(1, 2)
show message + c

c = remainder(1, 2)
show message + c
