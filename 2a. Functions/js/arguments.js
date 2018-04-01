// Generated by CoffeeScript 2.2.2
// arguments.coffee
// Assessing `arguments` 

// default arguments 
var calculateTotal, defaultRate, href;

calculateTotal = function(sub_total, rate = 0.05) {
  var tax;
  tax = sub_total * rate;
  return sub_total + tax;
};

console.log(calculateTotal(100, 0.0625));

console.log(calculateTotal(100));

// default argument refer to other arguments 
href = function(text, url = text) {
  var html;
  html = `<a href='${url}'>${text}</a>`;
  return html;
};

console.log(href("Click Here", "http://www.example.com"));

console.log(href('http://www.example.com'));

defaultRate = function() {
  return 0.05;
};

calculateTotal = function(sub_total, rate = defaultRate()) {
  var tax;
  tax = sub_total * rate;
  return sub_total + tax;
};

console.log(calculateTotal(100, 0.0625));

console.log(calculateTotal(100));

// eof
