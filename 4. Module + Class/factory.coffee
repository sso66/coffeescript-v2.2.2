# factory.j
console.log 'Polymorphism and Switching'

requisitionStarship = (captain) ->
  switch captain
    when 'Kirt', 'Picard', 'Archer'
      # new Enterprise()
      console.log 'Enetprise function'
    when 'Janeway'
      # new Voyager()
      console.log 'Voyager function'
    else
      throw new Error('Invalid starship captain')
  
      
 console.log requisitionStarship('Stephen')