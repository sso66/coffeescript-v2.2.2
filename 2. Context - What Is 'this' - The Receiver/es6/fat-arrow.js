/*
 * decaffeinate suggestions:
 * DS101: Remove unnecessary use of Array.from
 * DS208: Avoid top-level this
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
// fat-arrow.coffee

const show = console.log;
// simple property
const setMessage = function(message) { return this.message = message; };
show(setMessage('CoffeeScript'));

// indexed property
const voicemail = new Array();
// voicemail = []

this.voicemail = voicemail;

const normal = message => voicemail.push(message);
const callback = message => this.voicemail.push(message);

callback('Hello World');
callback('Goodbye Sun');

for (var message of Array.from(this.voicemail)) {
  show(message + ' from receiver');
}
  
for (message of Array.from(voicemail)) {
  show(message  + ' from sender');
}