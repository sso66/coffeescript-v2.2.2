# 4. Modules and Classes
# 4.1 Modules: Splitting Up Apps

# In browser environment, JavaScript doesn't care about files. No matter
# how many files you have, it just a bunch of lines. So if tow files in
# an application happen to declare global-scope variables with the SAME name,
# you will have a problem with scope.
#
# The solution is namespacing in JavaScript (CoffeeScript), every function has
# own namespace. A (scope) variable declared in a function never visible outside
# of that function.
#
# So, a common JavaScript convention is to make each file a module by wrapping
# a function, which immediately executed. Ref. IIEF pronouns "iffy" for details.
# 
# Server-side environments like Node.js, which implement the CommonJS specification,
# always treat each file as a separate module.
# 
# As mendion JavaScript, Under Wraps, the CoffeeScript compiler wraps each .coffee
# file in an anonymous function wrapper, unless it's invoked with -bare flag.
# Also, CoffeeScript aslo prevents you from delcaration global variables by mistake,
# which in JavaScript is as easy as forgetting the 'var' keyword.
# 
# So, the question is how do you share data between modules?
# The answer is you attach them to global variable. One option is to use root object, 
# which is the only object whose properties can be referenced without qualification.
# In browser environment, the root object is 'window'. In Node, it's global.
#
# ES6 resolves this issue by Universal Module Definition (UMD) patterns with
# import/export key words for browser environment.

console.log 'Root Module'

global.httpCodes =
  movedPermanently: 301
  pageNotFound: 404
  serverError: 500 

# eof