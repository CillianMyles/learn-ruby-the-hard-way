puts "Opening file...\n"
open_file = open(input_file)
print_file_contents(open_file)
open_file.close

puts "Deleting...\n"
open_file = open(input_file, "w")
open_file.truncate(0)
open_file.close
open_file = open(input_file)
print_file_contents(open_file)
open_file.close