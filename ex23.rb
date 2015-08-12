input_file, output_file = ARGV

def print_file_contents(filename)
  puts "\n#{filename} contents:"
  puts get_file_contents(filename) + "\n"
end

def get_file_contents(input_file)
  open_file = open(input_file)
  file_content = open_file.read
  open_file.close
  return file_content
end

def empty_file(input_file) 
  open_file = open(input_file, "w")
  open_file.truncate(0)
  open_file.close
end

def write_to_file(input_content, output_file)
  open_file = open(output_file, "w")
  open_file.write(input_content)
  open_file.close
end

def copy_file(input_file, output_file)
  write_to_file(get_file_contents(input_file), output_file)
end

def print_current_files(input_file, output_file)
  print_file_contents(input_file)
  print_file_contents(output_file)
end

print_current_files(input_file, output_file)
copy_file(input_file, output_file)
print_current_files(input_file, output_file)
empty_file(output_file)
print_current_files(input_file, output_file)
