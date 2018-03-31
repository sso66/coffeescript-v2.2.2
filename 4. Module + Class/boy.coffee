# 4.2 The Power of Prototypes
console.log 'The symbol :: is to prototype keyword'

Boy = ->
Boy::sing = ->
  console.log "Boy's sing: It ain't easy being a boy named Sue"
  
sue = new Boy()
sue.sing()
# eof