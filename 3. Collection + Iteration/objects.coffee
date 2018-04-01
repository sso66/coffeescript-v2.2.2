console.log 'Objects as Hashes'
# Note that string interpolation with not support in hash keys
#
console.log 'In JavaScript Everything is Object.'
#__ Objects 101 ___
#obj = new Object()
obj = {}

obj.name = 'John'
console.log "dot.notation " +  obj.name

obj['name'] = 'John'
# Collection + Iteration
console.log "bracket notation " +  obj['name']

obj = { name: 'John' }

obj = -> 
  name = 'John'

#___ Streamlined JSON ___
father = 
  name: 'John'
  daughter: 
    name: 'Jill'
  son: 
    name: 'Jack'
    
console.log father.name
console.log father.daughter.name
console.log father.son.name
#
# streamlined notation inline
fellowship = wizard: 'Gandalf', hobbits: ['Frodo', 'Pipin', 'Sam']
console.log fellowship.wizard

for hobbit in fellowship.hobbits
  console.log hobbit

#___ Same-Name-Key-Value Pairs ___
delta = '\u0394'
# short way
geekUnicode = {delta}
console.log "short: geekUnicode.delta = " + geekUnicode.delta
# long way: (Note that this shorthand only works with explicit curly braces.)
# Ref: Pattern Matching (or, Destructing Assigment)
geekUnicode = {delta: delta}
console.log "long: geekUnicode.delta = " + geekUnicode.delta

#___ Soaks:'a?b' ___
console.log 'existential operator in Default Arguments (args =)'
#a = b?.property?c
#cats?['Garfield']?.eat?() if lasagna?
 
# eof 