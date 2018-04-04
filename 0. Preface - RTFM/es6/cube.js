/*
 * decaffeinate suggestions:
 * DS101: Remove unnecessary use of Array.from
 * DS205: Consider reworking code to avoid use of IIFEs
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
// cube.coffee
// coffee (compile) -> ES5
// coffee (decafeinate) -> ES6

/*
	JavaScript Design Patterns:
	1. Creational
	2. Structural
	3. Behavioral 
	4. Interaction
	5. Presentation
*/

// Create 
let num;
const cube = num => Math.pow(num, 3);

// Collect
const list = [1,2,3,4,5];

// Iterate & Store
const cubeList = [(() => {
	const result = [];
	for (num of Array.from(list)) { 		result.push(cube(num));
	}
	return result;
})()]; // get list items
console.log(cubeList); // get structure of the list
//console.log cubeList.toString() # get stringified items
console.log(`Cube List: ${cubeList}`); // get concatenated items

// Iterate & Display
for (num of Array.from(list)) { console.log(cube(num)); }