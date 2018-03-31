# 4.2 The Power of Protype
console.log 'The symbol :: is to prototype keyword'

Gift = (@name) ->
  Gift.count++
  @day = Gift.count
  @announce()
  
Gift.count = 0
Gift::announce = ->
  console.log "On day #{@day} of Chritmas I received #{@name}"

# implement
gift1 = new Gift('a partride of a pear tree')
gift2 = new Gift('two turtle doves')
# eof