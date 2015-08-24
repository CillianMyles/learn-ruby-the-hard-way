# Create a mapping of State to abbreviation
states = {
  'Oregion' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

# Basic list of cities
cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

# Add some more
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# Puts out some ciites
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

# Puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

# Do it by using the state then the city dictation
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# Puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated to: #{abbrev}"
end

# Puts every city in a state
puts '-' * 10 
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

# Now doing both at the same time 
puts '-' * 10 
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated to #{abbrev} and has the city #{city}"
end

# By default Ruby says nil when 
puts '-' * 10
state = states['Texas']

if !state
  puts "Sorry, no Texas!"
end

city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the State 'TX' is: #{city}"
