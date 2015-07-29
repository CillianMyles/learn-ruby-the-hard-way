# accepts all arguments
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# two arguments
def print_two_args(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# one argument
def print_one(arg1)
  puts "arg1: #{arg1}"
end

# no arguments
def print_none()
  puts "Got nothin'."
end

print_two("Zedds", "Dead")
print_two_args "Zedds", "Dead" # no parenthesis, same o/p
print_one("First!")
print_none