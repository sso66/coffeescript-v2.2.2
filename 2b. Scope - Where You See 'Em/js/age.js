// Generated by CoffeeScript 2.2.2
(function() {
  // age.coffee

  // the scope of age is the global scope
  //age = 99 # 
  //reincarnate = -> age = 0
  //reincarnate()
  var age, reincarnate;

  console.log(`1) I am ${age} years old at global scope!`);

  reincarnate = function() {
    var age;
    return age = 0;
  };

  age = 99;

  reincarnate();

  console.log(`2) I am ${age} years old at global scope!`);

  //reincarnate = -> age = 0
  //reincarnate()
  console.log(`3) I am ${age} years old at global scope!`);

  // eof

}).call(this);
