console.log "Bound Function: 'this' Means 'this'\n"

show = console.log

# Sometimes you want a function to run in the current context no matter
# HOW it's called. This is especially common with event callbacks. Let say that
# you want someone to leave a message in your voicemail array (bound to the 
# current context. Then you might write (code) something like this:
# callback = (message) -> @voicemail.push.message
#
# Ah, but of course you realize that when callback (simple_call) without the
# relevant object, 'this' will simply refer to the global--or to whichever context
# the other library sets via 'call' or 'apply'.
# Isn't there any way to make 'this' always point to the same object, no matter
# HOW the function is called? 
#
# Re: ECMAScript-Wikipedia. "How Does => Work?"
# (ES5 provides simpler bind kethod on the Function prototype.)
# CoffeeScript (ES6) makes binding a function to the current context as easy as
# single character => instead of ->. Call the => "bound function operator" or,
# less formally, the "fat-arrow".

show '___ simple property ___'
simple_call = (message) -> @message = message
show simple_call 'simple_call: Hello CoffeeScript v2.2.2'

simple_bound_call = (message) => @message = message
show simple_bound_call 'simple_bound_call: Hello CoffeeScript v2.2.2'

show '___ indexed property ___'
# voicemail = new Array()
voicemail = []

@voicemail = voicemail

indexed_call = (message) -> voicemail.push message

indexed_call 'indexed_call: Hello World'
indexed_call 'indexed_call: Goodbye Moon'
  
show '___ bound property ___'
callback = (message) => @voicemail.push message
callback 'callback: Hello World'
callback 'callback: Goodbye Moon'

for message in @voicemail
  show message + ' from receiver'
  
for message in voicemail
  show message  + ' from sender'
  
# Why you should just always use => instead of -> (re: pure functions)?
# Two reasons:
#	1. The binding leads to some small overhead in both file size and 
#	  executing time and is usually unnecessary.
# 2. The nature of context ('this' or receiver) is often confusing, and allow
#  for very elegant code. 
# Libraries (React, AngularJS, jQuery) pass critical information to
#  callback functions through context ('this' or receiver). jQuery sample:
#	$('#clickToHide').click -> $(this).hide()
# 
# Rather than strictly using either normal functions (->) or bound functions (=>),
#	 you need to think carefully each time you define a function that uses this/@
#	 about what context should mean.
#
console.log "\nConsider yourself a master of function semantics!"
# eof