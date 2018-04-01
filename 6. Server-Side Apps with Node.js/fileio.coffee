# Server-side Apps with Node.js
fs = require 'fs'
fs.readdir '.', (err, files) ->
	console.log files
console.log 'This will happen first'

# Here is what happens:
#	1. When ask Node.js to read the current directory with fs.readdir, passing a callback.
#	2. Node.js passes the request alogn to the operating system, then immediately returns.
#	3. We print 'This will happen happen first.' to the console.
#	4. Once or code has run. Node.js checks to see if the operating system
#		 has answered our request yet. It has, so it runs our callback, and a list
#		 of files (and, folder) in the current direcotry is printed in the console.
console.log 'You got that? This is very important to understand. Your code is never interrupt