# hello.coffee
show = console.log 

show 'Hello World! Function calls: simple/indexed/bound'

normalFn = -> show 'Normal function - thin arrow Hello World!'
boundFn = => show 'Bound function - fat arrow  Hello World!'

do normalFn
do boundFn