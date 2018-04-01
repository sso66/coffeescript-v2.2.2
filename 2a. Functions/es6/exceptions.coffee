# exceptions.coffee

odd = (num) ->
  if typeof num is 'number'
    if num is Math.round num
      if num > 0
        num % 2 is 1
      else
        throw "#{num} is not positive"
    else
      throw "#{num} is not an integer"
  else
    throw "#{num} is not a number"

# improved style
odd = (num) ->
  unless typeof num is 'number'
    throw "#{num} is not a number"
  unless num is Math.round num
    throw "#{num} is not an integer"
  unless num > 0
    throw "#{num} is not positive"
  num % 2 is 1

try
  odd 5.1
catch e
  console.log e
