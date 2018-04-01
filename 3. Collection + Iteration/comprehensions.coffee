# Comprehensions
# With functional languages, you can iterate with operations like 'map', 'reduce' and
# 'compact'. Many of these operations have been added to JavaScript through libraries, such as
# Underscorejs and Lodash.js.
#
# But to gain maximum succinctness and flexbility, a language needs array comprehensions (also
# know as list comprehensions).
# 
# Think of all the times you've looped over an array just to create another array based on
# the firs. For instance, to negate an arra of numbers in JavaScript you'd write the following:
positiveNumbers = [1, 2, 3, 4]
negativeNumbers = []
for i in positiveNumbers
	console.log negativeNumbers.push -i
console.log negativeNumbers
console.log '___ one-liner ___'
console.log negativeNumbers = (-num for num in [1, 2, 3, 4])
#
# You can use the comprehension syntax with a conditional loop:
###
keypressed = (char while char = handleKeyPress())
###

# eof 