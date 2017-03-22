i = 0
numbers = []

while i < 6
  puts "************"
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"

end

puts "The numbers: "

puts "*** Method 1 - Traditional ***"
for number in numbers
  puts number
end

puts "*** Method 2 - Ruby-Style ***"
numbers.each do |number|
  puts number
end

puts "*** Method 3 - Short Ruby-Style ***"
numbers.each {|number| puts number}
