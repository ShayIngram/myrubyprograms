#Challenge: Convert

class Temperature

	attr_accessor :temp

	def from_fahrenheit(temp)
		k = temp + 459.67 * 5/9
		c = (temp - 32.00) * 5/9
		r = temp + 459.67
		"#{temp}"+ 'F is ' + "%.2f" % k + 'K' + ' and ' + "%.2f" % c + 'C' + ' and ' + "%.2f" % r + 'R'
	end

	def from_celcius(temp)
		k = temp + 273.15
		f = temp * 9/5 + 32
		r = (temp + 273.15) * 9/5
		"#{temp}" + 'C is ' + "%.2f" % f + 'F' + ' and ' + "%.2f" % k + 'K' + ' and ' + "%.2f" % r + 'R'

	end
	def from_kelvin(temp)
		f = temp * 9/5 - 459.67
		c = temp - 273.15
		r = temp * 9/5
		"#{temp}" + 'K is '+ "%.2f" % f + 'F' + ' and ' + "%.2f" % c + 'C' + ' and ' + "%.2f" % r + 'R'
	end

	def from_rankine(temp)
		f = temp - 459.67
		c = (temp - 491.67) * 5/9
		k = temp * 5/9
		"#{temp}" + 'R is '+ "%.2f" % f + 'F' + ' and ' + "%.2f" % c + 'C' + ' and ' + "%.2f" % k + 'K'
	end


end

temperature = Temperature.new

puts 'Enter the temperature you wish to convert followed by the scale (Example: 100F for Fahrenheit, 37C for Celcius):'
STDOUT.flush
input_temp = gets.chomp

temp = input_temp.to_f
scale = input_temp[/.\Z/].upcase

case scale
when "F"
	puts temperature.from_fahrenheit(temp)
when "C"
	puts temperature.from_celcius(temp)
when "K"
	puts temperature.from_kelvin(temp)
else
	puts "#{input_temp} is invalid."
end





