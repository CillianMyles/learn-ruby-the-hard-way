file_name = ARGV.first

contents = open(file_name)

puts "Here's your file #{file_name}:"
print contents.read
contents.close

print "Type the filename again: "
file_again = $stdin.gets.chomp

contents_again = open(file_again)
contents_again.close

print contents_again.read
