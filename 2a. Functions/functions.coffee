tax_rate = 0.625

price = 100
console.log "What is the total of $#{price} worth of shopping?"
tax = price * tax_rate
total = price + tax
console.log "The total is #{total}"

price = 200
console.log "What is the total of $#{price} worth of shopping?"
tax = price * tax_rate
total = price + tax
console.log "The total is #{total}"


default_tax_rate = 0.625

calculateTotal = (sub_total, tax_rate = default_tax_rate) ->
  tax = sub_total * tax_rateprice
  sub_total + tax
  
price = 100
console.log "What is the total of $#{price} worth of shopping?"
console.log "The total is #{calculateTotal(price)}"

price = 200
console.log "What is the total of $#{price} worth of shopping?"
console.log "The total is #{calculateTotal(price)}"

# eof