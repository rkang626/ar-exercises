require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Ryan", last_name: "Kang", hourly_rate: 70)
@store2.employees.create(first_name: "Jon", last_name: "Snow", hourly_rate: 50)
@store2.employees.create(first_name: "Clayton", last_name: "Kershaw", hourly_rate: 50)
@store2.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 70)