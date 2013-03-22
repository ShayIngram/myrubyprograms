=begin
Ruby program read a file. Then, finds "word" and replaces it with a given substition.
The new string overwrites the original contents before the file is closed. 
=end

puts 'Enter a file name:'

input = gets.chomp

puts 'Enter the string to be substituted:'

str = gets.chomp

txt = File.new(input, 'r')
contents = txt.read()

if  contents.include? str
  new_contents = contents.gsub!(str, "inserted word")
end

File.open(input, 'w'){|f| f.puts new_contents}

txt.close()

















