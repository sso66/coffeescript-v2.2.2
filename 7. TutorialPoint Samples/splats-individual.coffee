# Dealing with JavaScript String Prototype

# Function - Controller
theBeatles = (first, second, others...) -> 
		return first + ',' + second + ',' + others

# Scope - Model
members = {a: 'John Lennon', b: 'Paul McCartney', c: 'George Harrison', d: 'Ringo Star', e: 'Eric Clapton'}

# Context - View		
console.log theBeatles members.a, members.b, members.c, members.d, members.e