# ranges.coffee
# To store a sequence of number values in an array

#numbers = [0..9] # include the end value
#numbers = [0...9 # exclude the end value
# using ranges with variables
#start = 0
#end = 9
#numbers = [start..end]
#console.log "The contains of the range are: " + numbers

# ranges with arrays
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
data = [0..5]
console.log "The contains of the range are: " + data

# using negative value
data = numbers[-3..]
console.log "The contains of the range are: " + data

# extracting the whole array
console.log "Total elements of the array: " + numbers[..]

# replacing the elements of an array
numbers[2..6] = [13, 14, 15, 16, 17]
console.log "New array: " + numbers

# ranges with strings
str = "Welcome to CoffeeScript"
strnew = str[0..7]
console.log strnew

# comprehension (iteration) over ranges
numbers = [0..9]
console.log "The elements of the range are:"
console.log number for number in numbers by 2 # increment by 2-step

# Basically destructiion assigments (pattern matching for Sequence object rather than Count object