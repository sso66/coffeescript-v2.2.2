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