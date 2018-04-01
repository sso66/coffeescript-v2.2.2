// hello.coffee
const show = console.log; 

show('Hello World!');

const normal = () => show('Normal Hello World!');
const callback = () => show('Callback Hello World!');

normal();
callback();