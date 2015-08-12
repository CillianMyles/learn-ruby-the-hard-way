the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'appricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# Traditional for loop style (like other languages).
for number in the_count
  puts "This is the count #{number}"
end

# More Ruby-ish style. This and next most common in Ruby.
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end 

# Other Ruby-esque style. Same functionally as above.
change.each {|i| puts "I got #{i}"}

# We can also build lists, start off with an empty one.
elements = []

# Then use a range operator to do 0 to 5 counts.
(0..5).each do |i|
  puts "Adding #{i} to the list."
  elements.push(i) # elements.push i ... would work also
end

# Now we print them out too
elements.each {|i| puts "Element was: #{i}"}
