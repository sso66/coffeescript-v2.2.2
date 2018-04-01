# 4. Modules and Classes
# 4.2 The Power of Prototypes: ENCAPSULATION + INHERITANCE + POLYMORPHISM

console.log "Prototypes, Precendence, and 'hasOwnProperty'"

# When an object inherits properties from a prototype, changes to the prototype
# will change the inherited properties (property means varaibles + functions):

Raven = ->
Raven::quoth = -> console.log 'Nevermore'
raven1 = new Raven()
#raven1.quoth() # Nevermore
do raven1.quoth # Nevermore

Raven::quoth = -> console.log "I'm hungry"
#raven1.quoth() # I'm hungry
do raven1.quoth # I'm hungry

console.log "___ raven1 is done! ___"

raven2 = new Raven()
raven2.quoth = -> console.log "I'm my own kind of raven"
raven1.quoth() # I'm hungry
raven2.quoth() # I'm my own kind of raven

# To check whether a property is attached to an object directly or inherited
# from a prototype, use the 'hasOwnProperty' function

console.log raven1.hasOwnProperty('quoth') # false
console.log raven2.hasOwnProperty('quoth') # true
console.log "raven2 takes precendence over raven1!"

# Precedence: the condition of being considered more important than someone or 
# something else; priority in importance, order, or rank.

# eof
