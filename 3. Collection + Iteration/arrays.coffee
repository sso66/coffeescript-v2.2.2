console.log '___ Array ___'
mcFlys = ['George', 'Lorraine', 'Marty']

for name in mcFlys
  console.log "JSON style set: " +  name
  
mcFlys = new Array()
mcFlys[0] = 'George'
mcFlys[1] = 'Lorraine'
mcFlys[2] = 'Marty'

#for name in mcFlys[0..1]
  #console.log "POJO style set with Range: " + name
  
#eof 