def authenticate(user_list, username, password)
  user_list.each { |user| return user if user[:username] == username && user[:password] == password }
  
  return nil
end

attempts = 0
users = [
  { username: 'mashrur', password: 'password1' },
  { username: 'jack', password: 'password2' },
  { username: 'arya', password: 'password3' },
  { username: 'jonsnow', password: 'password4' },
  { username: 'heisenberg', password: 'password5' }
]

puts 'Welcome to the authenticator'
30.times { print '-' }
puts
puts 'This program will take input from the user and compare password'

while attempts < 3
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp

  user = authenticate(users, username, password)

  if !user.nil?
    attempts = 0
    puts user
  else
    puts 'Credentials were not correct'
    attempts += 1
  end

  puts 'You have exceeded the maximum number of attempts' if attempts >= 3
  break if attempts >= 3

  print 'Press n to quit or any other key to continue: '
  break if gets.chomp.downcase == 'n'
end
