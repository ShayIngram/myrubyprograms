
#Determines if user input is all caps
def heard?(user_input)
  user_input == user_input.upcase
end

#Randomly produce a year between 1930 and 1950
def year(year_range = (1930..1950))
  rand(year_range)
end

puts 'Speak to your deaf grandma: (type a message or type \'BYE\' to quit)'
user_input = gets.chomp

#count = 0

while user_input != 'BYE' do
  #if user_input == 'BYE'
	#count += 1
	#puts 'HUH?! SPEAK UP SONNY!' 
  
  if user_input.empty?
    puts 'I SEE YOUR MOUTH MOVING BUT NOTHING IS COMING OUT, SONNY!'
  elsif heard?(user_input) && !user_input.empty?
  	puts "NO, NOT SINCE #{year}!"
  else 
	  puts 'HUH?! SPEAK UP, SONNY!'
  end
  user_input = gets.chomp
end

puts 'BYE SONNY!'