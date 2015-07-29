# close -- Closes the file. Like File->Save.. in your editor.
# read -- Reads the contents of the file. You can assign the result to a variable.
# readline -- Reads just one line of a text file.
# truncate -- Empties the file. Watch out if you care about the file.
# write('stuff') -- Writes "stuff" to the file.from_file, to_file = ARGV

from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

indata = open(from_file).read 

puts "The input file is #{indata.length} bytes long."

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

out_file = open(to_file, "w")
out_file.write(indata)

puts "Alright, all done."

out_file.close