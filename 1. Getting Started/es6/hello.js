// hello.coffee
const show = console.log; 

show('Hello World! Function calls: simple/indexed/bound');

const normalFn = () => show('Normal function - thin arrow Hello World!');
const boundFn = () => show('Bound function - fat arrow  Hello World!');

normalFn();
boundFn();