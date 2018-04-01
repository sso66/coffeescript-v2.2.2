# jquery.coffee
# jQuery pass critical information to callback 'click' function through context - 'this'

$ = jQuery = require('jquery') # In Node.js

$('#clickToHide').click -> $(this).hide()
# common stylistic convention 
$pokemon = $('#pikachu')

# ___ Manipulating the DOM ___
# act on all <p> of the matched elements
sonnet = $('p').fadeOut()

# getter function act on first matched element
sonnet = $('p').html()
# getter function exception, which combines the textual of 
# all the matched elements into a single string. 
sonnet = $('p').text()

# setter function
$('p').html sonnet
# getter functiion read the first HTML of the first paragraph
$('p').text sonnet

# ___ Getting Selective ___
pickchu = $('#pikachu').get(0)
pickchu = $('#pikachu')[0]

# re: array functions: length, slice, push, concat

# multiple selectors
$selectors = $('a, button, .link')
$selectors = $('a').add('button').add('.link')
$selectors = $('#header img')
$selectors = $('#header').find('img')
$selectors = $('#header > img')
$selectors = $('#header').children('img')

# special modifiers
$('tr:odd')
$('li:has(a)')
$(':checked')

# ___ Reacting to events ___
$('h1').click -> $(this).html $(this).html() + '!'

$('h1')
  .click(-> $(this).html $(this).html() + '/')
  .click(-> alert $(this).text())
  
#___ jQuery Chain Gang Strategy Design Pattern ___
$('logo')
  .css(fontSize: 64)
  .hover(-> $(this).css(fontWeight: 'bold'))
  .click(-> alert 'How dare you click the mighty logo!')
  
#___ CoffeeScript Equivalent Strategy Design Pattern ___
$logo = $('logo')
$logo.css fontSize: 64
$logo.hover -> $logo.css fontWeight: 'bold'
$logo.click -> alert 'How dare you click the mighty logo!'

#___ Event Binding vs Data Binding / Event Bubbling and Capturing ___
$('#oldSpiceGuy').live 'click', -> alert "I'm on a horse."
$('body').html '<p id="oldSpiceGuy">The man your man could smell like</p>'

# eof