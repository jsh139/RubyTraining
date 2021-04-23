dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evanston' => '847',
  'orlando' => '407',
  'lancaster' => '717'
}

def get_city_names(some_hash)
  some_hash.keys
end

def get_area_code(some_hash, key)
  some_hash[key]
end

loop do
  print 'Do you want to lookup an area code based on a city name? (Y/N) '
  break if gets.chomp.upcase != 'Y'
  
  puts 'Which city do you want the area code for?'
  puts get_city_names(dial_book)

  print 'Enter your selection: '
  selection = gets.chomp

  if dial_book.include?(selection)
    puts "The area code for #{selection} is #{get_area_code(dial_book, selection)}"
  else
    puts "The city name #{selection} was not found"
  end
end
