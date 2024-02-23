// Generated by CoffeeScript 2.2.2
(function() {
  // cube.coffee
  // coffee (compile) -> ES5
  // coffee (decafeinate) -> ES6
  var cube, cubeList, i, len, list, num;

  /*
  	JavaScript Design Patterns:
  	1. Creational
  	2. Structural
  	3. Behavioral 
  	4. Interaction
  	5. Presentation
    6. Animation
  */
  // Create 
  cube = function(num) {
    return Math.pow(num, 3);
  };

  // Collect
  list = [1, 2, 3, 4, 5];

  // Iterate & Store
  cubeList = [
    (function() {
      var i,
    len,
    results;
// get list items
      results = [];
      for (i = 0, len = list.length; i < len; i++) {
        num = list[i];
        results.push(cube(num));
      }
      return results;
    })()
  ];

  console.log(cubeList); // get structure of the list

  console.log(cubeList.toString()); // get stringified items

  console.log('Cube List: ' + cubeList); // get concatenated items

  for (i = 0, len = list.length; i < len; i++) {
    num = list[i];
    
    // Iterate & Display
    console.log(cube(num));
  }

}).call(this);
