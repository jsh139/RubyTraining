# This is a comment
# puts "Hello World"
# p "Hello World"
# print "Hello World\n"
# greeting = "Hello World"
# puts greeting

# def say_hello(thing_to_say)
#    puts "Hi " + thing_to_say
# end

# say_hello "Josh"

# first_name = 'Josh'
# last_name = 'Hoffman'
# full_name = "#{first_name} #{last_name}"

# puts "My full name is #{full_name}"

# puts 'What is your first name?'
# first_name = gets.chomp
# puts "What is your last name?"
# last_name = gets.chomp

# puts 'How old are you?'
# age = gets.chomp.to_i
# puts age * 2

# a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# p a.last
# puts

# sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
# my_details = { name: 'Josh', favcolor: 'black' }

# my_details.each do |k, v|
#   puts "The class for key is #{k.class} and the value is #{v.class}"
# end

# puts sample_hash

# require 'bcrypt'
require_relative 'crud'

users = [
  { username: 'mashrur', password: 'password1' },
  { username: 'jack', password: 'password2' },
  { username: 'arya', password: 'password3' },
  { username: 'jonsnow', password: 'password4' },
  { username: 'heisenberg', password: 'password5' }
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users
