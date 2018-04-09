// classes.coffee

class Animal {
	constructor(name) {
		this.name = name;
	}
}
	
const animal = new Animal("Parrot");
console.log(`Animal is ${animal.name}`);