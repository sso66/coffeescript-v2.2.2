# Dealing with JavaScript String Prototype

console.log "___INDIVIDUAL ACCOUNT___"
# Function - Controller
theBeatles = (first, second, others...) -> 
		return first + ',' + second + ',' + others

# Scope - Model
members = {a: 'John Lennon', b: 'Paul McCartney', c: 'George Harrison', d: 'Ringo Star', e: 'Eric Clapton'}

# Context - View		
console.log theBeatles members.a, members.b, members.c, members.d, members.e

console.log "___GROUP ACCOUNT___"
show = console.log

render = (first, second, others..., last) ->
	show "First: " + first
	show "Second: " + second
	show "Others: " + others
	show "Last: " + last

show '___ The Beatles ___'
render 'John Lennon', 'Paul McCartney', 'George Harrison', 'Ringo Star'
	
bands = [ 'The Beatles', 'The Rolling Stones', 'The Eagles', 'The Beach Boys' ]
show '___ The Musicians ___'
render bands...