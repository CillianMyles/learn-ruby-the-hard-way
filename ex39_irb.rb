# Arrays 
things = ['a', 'b', 'c', 'd']
puts things[1]

things [1] = 'z'
puts things[1]

puts "things:", things

# Hashes
stuff = {'name' => 'Cillian', 'age' => 22, 'height' => 186}
puts stuff['name']
puts stuff['age']
puts stuff['height']

stuff['city'] = "Galway"
puts stuff['city']

stuff[1] = "Wow"
puts stuff[1]
stuff[2] = "Cool"
puts stuff[2]

puts "stuff: ", stuff

stuff.delete('city')
stuff.delete(1)
stuff.delete(2)

puts "stuff: ", stuff
