=begin
Ruby program read a file. Then, finds "word" and replaces it with a given substition.
The new string overwrites the original contents before the file is closed. 
=end

puts 'Enter a file name:'
print '>>'

input = STDIN.gets.chomp

txt = File.new(input, 'r')
contents = txt.read()

if contents.include? "word"
  new_contents = contents.gsub!(/word/, "inserted word")
end

File.open(input, 'w'){|f| f.puts new_contents}

txt.close()

















