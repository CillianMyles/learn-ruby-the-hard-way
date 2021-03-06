# this is like ARGV
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# no need for the *args
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this just takes one argument
def print_one(arg1)
  puts "arg1: #{arg1}"
end

# this one take no arguments
def print_none()
  puts "I got nothin'."
end

print_two("Cillian", "Myles")
print_two_again("Cillian", "Myles")
print_one("First!")
print_none
