# 4. Modules and Classes
# 4.2 The Power of Prototypes: ENCAPSULATION

# It is important to understand how prototypes work.

# A prototype is an object whose properties are shared by all objects that have
# that prototype. An object's prototype can usually be accessed using the aptly-named
# 'prototype' property.

# However, you can't just go and write A.prototype = B. Instead you need to use
# the 'new' keyword, which takes a function called constructor and creates an
# object that inherits the constructor's prototype.

# The shorthand :: is equivalent is prototype keyword.

Boy = -> # by convention, constructor names are capitalized
Boy::sing = ->
  console.log "Boy constructor function sing: It ain't easy being a boy named Sue"
  
sue = new Boy()
sue.sing()

# The result sue object inherits the properties of Boy.prototype

# eof