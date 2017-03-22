the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'appricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# Traditional for loop
for number in the_count
  puts "This is count: #{number}"
end

# More Ruby-style
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# Shortened Ruby-style
change.each {|i| puts "I got #{i}"}

# Now we will build a list
new_list = []

# Range operator to do 0 to 5
(0..5).each do |i|
  puts "Adding #{i} to the list."
  # Push the i varaible to end of list
  new_list.push(i)
end

# Now we print them again
new_list.each {|i| puts "Element was: #{i}"}
