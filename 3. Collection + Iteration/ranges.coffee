# Collection + Iteration
# Ranges - declarative vs imperative
# Dynamic Array vs JS Static Array
show = console.log

numbers = [1..5]
show 'numbers: ' + numbers
for index in numbers
  show index

strings = ['a', 'b', 'c', 'd'].slice 0, 3
show 'strings: ' + strings
for index in strings
  show index

letters = ['a', 'c']
show 'letters: ' + letters
letters[1...2] = ['b']
for index in letters
  show index

fruits = ["Banana", "Orange", "Apple", "Mango"];
show 'fruits: ' + fruits
fruits.splice(2, 0, "Lemon", "Kiwi");
show 'fruits: ' + fruits
for index in fruits
	show index  

show 'Pattern Matching (Destructuring Assignment) ES6 feature'
steveAustin = ['reqular', 'guy']
show 'Steve Austin: ' + steveAustin
replacementParts = ['better', 'stronger', 'faster']
steveAustin[0..] = replacementParts
show 'Steve Austin: ' + steveAustin
# eof