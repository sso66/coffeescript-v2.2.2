# Scope in loops
# Only functions create scopes; expecting loops to create scope leads
# to horrible bugs when dealing with asynchronous callbacks - the most
# common source of confusion in ASYNC code.
sum = 0
while sum < limit
	sum += x = nextNum()
	# solution is to capture the values of x and sum: map (index) and reduce (sum up).
	do (x, sum) ->
		getEncryptionkey (key) ->
			saveEncrypted key, x, sum 
			