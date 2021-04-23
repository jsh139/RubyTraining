def multiply(first_num, second_num)
  first_num.to_f * second_num.to_f
end

def subtract(first_num, second_num)
  first_num.to_f - second_num.to_f
end

def add(first_num, second_num)
  first_num.to_f + second_num.to_f
end

def divide(first_num, second_num)
  first_num.to_f / second_num.to_f
end

def mod(first_num, second_num)
  first_num.to_f % second_num.to_f
end

puts 'Simple Calculator'
25.times { print '-' }
puts

puts 'Enter the first number'
num_1 = gets.chomp
puts 'Enter the second number'
num_2 = gets.chomp

puts 'What do you want to do?'
puts 'Enter 1 for multiply, 2 for addition, 3 for subtraction'
entry = gets.chomp

if entry == '1'
  puts "The first number multiplied by the second number is #{multiply(num_1, num_2)}"
elsif entry == '2'
  puts "The first number added to the second number is #{add(num_1, num_2)}"
elsif entry == '3'
  puts "The first number subtracted from the second number is #{subtract(num_2, num_1)}"
else
  puts "The first number divided by the second number is #{divide(num_1, num_2)}"
end

# puts "The first number added to the second number is #{add(num_1, num_2)}"
# puts "The remainder of first number divided by the second number is #{mod(num_1, num_2)}"

