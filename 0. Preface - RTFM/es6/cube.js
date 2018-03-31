/*
 * decaffeinate suggestions:
 * DS101: Remove unnecessary use of Array.from
 * DS205: Consider reworking code to avoid use of IIFEs
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
// cube.coffee
// coffee -> ES5
// coffee (decafeinate) -> ES6

// Create 
let cubeList;
let num;
const cube = num => Math.pow(num, 3);

// Collect
const list = [1,2,3,4,5];

// Store
console.log(cubeList = [(() => {
  const result = [];
  for (num of Array.from(list)) {     result.push(cube(num));
  }
  return result;
})()]);

// Iterate
for (num of Array.from(list)) { console.log(cube(num)); }