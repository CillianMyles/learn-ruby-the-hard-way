i = 0 
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# 3 ways to do for loops
puts "Method 1:"
for number in numbers
  puts number
end

puts "Method 2:"
numbers.each do |number|
  puts number
end

puts "Method 3:"
numbers.each {|number| puts number}
