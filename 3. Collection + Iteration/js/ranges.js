// Generated by CoffeeScript 2.2.2
  // Ranges - declarative vs imperative
var fruits, i, index, j, k, l, len, len1, len2, len3, letters, numbers, ref, replacementParts, show, steveAustin, strings,
  splice = [].splice;

show = console.log;

numbers = [1, 2, 3, 4, 5];

show('numbers: ' + numbers);

for (i = 0, len = numbers.length; i < len; i++) {
  index = numbers[i];
  show(index);
}

strings = ['a', 'b', 'c', 'd'].slice(0, 3);

show('strings: ' + strings);

for (j = 0, len1 = strings.length; j < len1; j++) {
  index = strings[j];
  show(index);
}

letters = ['a', 'c'];

show('letters: ' + letters);

splice.apply(letters, [1, 1].concat(ref = ['b'])), ref;

for (k = 0, len2 = letters.length; k < len2; k++) {
  index = letters[k];
  show(index);
}

fruits = ["Banana", "Orange", "Apple", "Mango"];

show('fruits: ' + fruits);

fruits.splice(2, 0, "Lemon", "Kiwi");

show('fruits: ' + fruits);

for (l = 0, len3 = fruits.length; l < len3; l++) {
  index = fruits[l];
  show(index);
}

show('Pattern Matching (Destructuring Assignment) ES6 feature');

steveAustin = ['reqular', 'guy'];

show('Steve Austin: ' + steveAustin);

replacementParts = ['better', 'stronger', 'faster'];

splice.apply(steveAustin, [0, 9e9].concat(replacementParts)), replacementParts;

show('Steve Austin: ' + steveAustin);

// eof
