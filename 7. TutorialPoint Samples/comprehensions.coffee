# comprehesions.coffee
### comprehensions.coffee ###
###
# Array pattern
for student in ['Ram', 'Mohammed', 'John']
  console.log student
  
# Object pattern
for key, value of { name: 'Mohammed', age: 24, phone: '984-820-2388', active: true }
  console.log key + '::' + value
###  
# List patterns
# Array of Objects 
students = [
  name: 'Mohammed'
  age: 24
  phone: '984-820-2388'
 ,  
  name: 'Ram'
  age: 25
  phone: '980-334-9942',
,  
  name: 'John'
  age: 24
  phone: '987-990-7788'
]

students = (student.name for student in students)
console.log students
console.log 'students: ' + students
###
names = (student.name for student in students)
console.log 'names: ' +  names

ages = (student.age for student in students)
console.log 'ages: ' + ages

phones = (student.phone for student in students)
console.log 'phones: ' + phones
###

# Object of Arrays
# Array of Arrays
# Object of Objects
