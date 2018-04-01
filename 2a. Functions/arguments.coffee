# arguments.coffee
# Assessing `arguments` 
 
# default arguments 
calculateTotal = (sub_total, rate = 0.05) ->
  tax = sub_total * rate
  sub_total + tax

console.log calculateTotal(100, 0.0625)
console.log calculateTotal(100)

# default argument refer to other arguments 
href = (text, url = text) ->
  html = "<a href='#{url}'>#{text}</a>"
  return html

console.log href("Click Here", "http://www.example.com")
console.log href('http://www.example.com')

defaultRate = -> 0.05
calculateTotal = (sub_total, rate = defaultRate()) ->
  tax = sub_total * rate
  sub_total + tax

console.log calculateTotal(100, 0.0625)
console.log calculateTotal(100)
# eof 
