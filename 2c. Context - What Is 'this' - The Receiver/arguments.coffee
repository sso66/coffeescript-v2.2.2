console.log 'Splats (...)\n'
# To convert any range of arguments to an array automatically,
# just add an elipsis, ... (also known as "the splat"], to the 
# end of any array name:
refine = (wheat, chaff...) ->
  console.log "The best: #{wheat}"
  console.log "The rest: #{chaff.join(' | ')}"
#
# The splat here means "take every argument after the first one, 'wheat',
# and combine them inot an array, 'chaffe'. Calling 'refine' wit a list of
# of four arguments result in the following:
refine 'great', 'not bad', 'so-so', 'meh'
#
# If just one argument is given, or if none are, then 'chaff' will just an empty array
refine 'great'
refine 'great', 'so-so'
# A spatted argument doesn't have to go ta the end of an argument list. The
# CoffeeScript compiler is smart enough about determining the appropriate 
# arguments to put in the array:
console.log  "Splat function signature: sandwich = (beginning, middle..., end) ->"
#
# Nonsplatted arguments always get filled in first. So if 'sandwich' is called 
# with only two arguments, those will become 'beginning' and 'end'. Only when
# there are threee or more arguments is there in a 'middle'. Splats "soak up and all
# extra arguments."
#
# Even if the splat comes first, the plain arguments take priority:
spoiler = (filter..., theEnding) -> console.log theEnding

spoiler 'Darth Vader is Luke\'s father!'

# CAUTION: Of course, it only maes sense to have ONE splatted argument in a 
# given function. Otherwise, the splats would have to duke it over how to split
# the arguments amongst themselvers.
#
# It worth mentioning that splats can also use to divvy up arrays on the fly
# without the use of function. ES6 Ref. Pattern Matching (or Destructuring 
# Assignments.

# eof