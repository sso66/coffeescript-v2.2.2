# Collection + Iteration
# Object + Array + Function core prototypes
show = console.log

# To iterate over an object's properties:
# for key, value of object
#		do things with key and value
###
father = 
  name: 'John'
  daughter: 
    name: 'Jill'
  son: 
    name: 'Jack'
    
for name, name of father 
	show name
###
# To iterate over an array's properties
# for value in array
# 	do things with the value
# Both styles of for loops can be followed by a 'when' clause that skips over
# loop iterations when the given condition fails.
#
# For instance, this code will run each function on 'obj', ignoring non-function
# properties
# This code will run each function on obj, ignoring non-function properties:
###
for key, func of obj when typeof func is 'function'
	func()
###
# And this only set 'highestBid' to 'bid' when 'bid is greater.
###
for bid of obj when bid > highestBid
	higestBid = bid
###
# Of course, we could have write 'continue unless condition' at the top of these
# loops, but 'when' is a useful syntatical suger, especially for one-liners.
# It's also only way to prevent any value from being added to the list returned
# by the loop, as we'll see a=in Comprehensions: list/array (Functional Programming)
# Ref: Underscore.js and Lodash.js libary: map, reduce and compact operations.
#
# for..in (ES6) support an additional modifier not shared by its cousin for..of: 'by'.
# Rather than stepping through an array one value at a time (the default), 'by' lets
# you set an arbitrary step value.
###
decimate = (array) ->
	execute(soldier) for soldier in army by 10
###
# Nor does the step value need to be an integer. Fractional values work great 
# in conjunction with ranges:
###
animate =(starTime, endTime, framesPerSecond) ->
	for pos in [startTime..endTime] by 1 / framesPerSecond
###
# And you can use negative steps to iterate backword through a range:
###
countdown = (max) ->
	show x for x in [max..0] by -1
###
# Note, however that negative steps are NOT supported for arrays. When you
# write for..in [start..end], start is the first loop value (and end is the last),
# so by 
show "No Scope for 'for' loop"
# When you write "for x of obj" or "for x in arr"you're making assignments to a 
# variable named x (KVC/KVO) in the current scope. You can take advantabe of this
# by using those variables AFTER the loop. Here's one:
###
for name, occupation of muderMysteryCharacters
	break if occpation is 'butler'
show "#{name} did it"
###
# Here is another:
###
coundown = [10..0]
for num in countdown
	break if abortLaunch()
if num is 0
	show 'We have liftoff'
else
	show 'Launch aborted with #{num} seconds left'
###
# But this lack of scope can also surprise you, especially if you define
# a function within the for loop. So when in doubt use 'do' to capture
# the loop function variable on each iteration.
for x in arr
	do (x) ->
		setTimeout (-> show x), 0
#
# Review this issue in Exercises

# eof
