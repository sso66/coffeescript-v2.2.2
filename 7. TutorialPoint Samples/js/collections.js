// Generated by CoffeeScript 2.2.2
var father, key, daughter, son, value;

father = {
  name: 'John',
  daughter: {
    id: 11344,
    name: 'Jill',
    email: 'jill@object.com'
  },
  son: {
    id: 24334,
    name: 'Jack',
    email: 'jack@object.com'
  }
};

for (key in father) {
  value = father[key];
  console.log(value);
}

daughter = father.daughter;
for (key in daughter) {
  value = daughter[key];
  console.log(value);
}

son = father.son;
for (key in son) {
  value = son[key];
  console.log(value);
}
