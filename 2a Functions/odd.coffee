# odd.coffee
console.log "Conditionals and Exceptions"

odd = (num) ->
	if typeof num is 'number'
		if num is Math.round num
			if num > 0
				num % 2 is 1
			else
				throw console.log "#{num} is not positive"
		else
			throw console.log "#{num} is not an integer"
	else
		throw console.log "#{num} is not a number"
		
odd = (num) ->
	unless typeof num is 'number'
		throw console.log "#{num} is not a number"
	unless num is Math.round num
		throw console.log "#{num} is not an integer"
	unless num > 0
		throw console.log "#{num} is not positive"
	console.log num % 2 is 1

odd('a');
odd(1.0)
odd(-1)