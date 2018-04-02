show = console.log

band = (@first, @second, @others..., @last) ->
	show "First: " + @first
	show "Second: " + @second
	show "Others: " + @others
	show "Last: " + @last

show '___ The Beatles ___'
band 'John Lennon', 'Paul McCartney', 'George Harrison', 'Ringo Star'
	
bands = [ 'John Lennon', 'Paul McCartney', 'George Harrison', 'Ringo Star' ]
show '___ The Musicians ___'
band bands...