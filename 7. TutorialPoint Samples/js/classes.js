// Generated by CoffeeScript 2.2.2
// classes.coffee
var Animal, animal;

Animal = (function() {
  class Animal {
    constructor(name) {
      this.name = name;
    }

    //sell: () -> @price 
    sell(price) {
      this.price = price;
      return this.price;
    }

  };

  Animal.prototype.price = 100;

  return Animal;

}).call(this);

//console.log "Sold at $#{@price} dollars!"
animal = new Animal("Parrot");

console.log(`Animal is a ${animal.name}`);

console.log("The animal sold at " + animal.sell(50));
