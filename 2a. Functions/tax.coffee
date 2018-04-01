# tax.coffee
### tax.js ###
###
tax_rate = 0.625

val = 100
console.log "What is the total of $#{val} worth of shopping?"
tax = val * tax_rate
total = val + tax
console.log "The total is #{total}"

val = 200
console.log "What is the total of $#{val} worth of shopping?"
tax = val * tax_rate
total = val + tax
console.log "The total is #{total}"

###
default_tax_rate = 0.625

calculateTotal = (sub_total, tax_rate = default_tax_rate) ->
  tax = sub_total * tax_rate
  sub_total + tax
  
val = 100
console.log "What is the total of $#{val} worth of shopping?"
console.log "The total is #{calculateTotal(val)}"

val = 200
console.log "What is the total of $#{val} worth of shopping?"
console.log "The total is #{calculateTotal(val)}"

### eof ###