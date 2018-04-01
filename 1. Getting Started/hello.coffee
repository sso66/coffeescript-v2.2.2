# hello.coffee
show = console.log 

show 'Hello World!'

normal = -> show 'Normal Hello World!'
callback = => show 'Callback Hello World!'

do normal
do callback