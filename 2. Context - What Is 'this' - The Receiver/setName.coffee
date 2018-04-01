console.log "this - Context - What Is 'this' - the Receiver"
console.log "Ways of giving function a context!\n"

# Here, name and @name (this.name) are totally different vaiable. name (which is
# we could call anything, really) is a local variable, one that will
# never visible out side of the function.
setName = (name) -> @name = name

# The main purpose of context ('this') is to give the JS Prototype
# object's (Receiver) methods (functions attatched as properties) 
# a way of referring to the object (Sender) they're being called on.
cat = {} 
cat.setName = setName
cat.setName 'Ms. Mittens' # setter/mutator
console.log cat.name # getter/accessor

# When we call cat.setName, we're calling setName with the cat object as its context (receiver;
# thus 'this' (or @) refer to the cat, and @name (this.name) refers to to cat.name. 
# The function itself hasn't changed. We could call the following:
console.log setName 'Mr. Mistoffelees'

# We can invoke a function in a particular context (receiver)without attatching the function to 
# that object by using the 'call' or 'apply' methods, which all functions have.
# Note: functions are objects albeit JavaScript Function prototype.
# 'apply' takes a context (receiver) and an array of arguments to pass to the function:
pig = {}
setName.apply pig, ['Babe']
console.log pig.name

# call work the the same way, except that it takes individual arguments rather than
# a single array. So the equivalent of the previous would be this:
setName.call pig, 'Babe' 
console.log pig.name

# In practice, 'apply' is more common used than call because it' more versatile.
# 'call' only let you change the context (receiver) of a normal function call, while apply
# let you change the context (receiver) and pass in arbitrary number of arguments.
# You can use 'call' and 'apply' to "borrow" one object's methods and use on another:
horse = {}
cat.setName.apply horse, ['Mr. Ed']
console.log horse.name

# Here, it doesn't matter that we're using cat.setName instead of setName; they're
# the same function.
setName.apply horse, ['Mr. Ed']
console.log horse.name

# Finally, one last way of giving a function a context (receiver) is with 'new' keyword, which creates
# new object using the function as a constructor.
Dog = setName
dog1 = new Dog('Jimmy')
dog2 = new Dog('Jake')
console.log dog1.name
console.log dog2.name

# The 'new' keyword says "Don't return the result of the function" instead 
# create a new object,
# run the function in that object's context, and then
# return the object.
# We can also give the object created by 'new' keyword additional properties using 'prototype' keyword.
# Because the 'new' keyword sets the new Dog as the context, @name (this.name) point to the new
# dog's name property.
# Just remember that it's generally a bad idea to use 'this' when it's pointing at the global object.
setName 'Lulu'
console.log name
console.log @name

# So, you see that context (receiver) is determined purely by HOW a function is called; unlike 'scope',
# it has nothing do with WHERE the function is defined. (Of course, we'd often like for the
# context (receiver) to be determined by WHERE the function is defined. Fortunately, there is a clever
# technique that lets effectively do this, one we'll meet in Bound Functions (=>): 'this' 
# Means 'this'.
console.log "\nRules of context (receiver) in nutshell, with earlier rules taking precendence over later ones:
\n1. When the 'new' keyword is put in front of a function call, it's context (receiver) is the new object.
\n2. When a function is called with 'call' or 'apply', the context is the first argument given.
\n3. Otherwise, if a function is called as an object property (obj.func) or (obj['func']; 
it runs in the global context."
# eof 