def convert_temp
	response = nil
	puts "Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius"
	response = gets.chomp
	if response == "1"
		puts "Enter the temperature in Celsius"
		c_degrees = gets.chomp.to_f
		f_degrees = c_degrees * 9 / 5 + 32
		puts "#{c_degrees} degrees Celsius is equal to #{f_degrees} degrees Fahrenheit"
	elsif response == "2"
		puts "Enter the temperature in Fahrenheit"
		f_degrees = gets.chomp.to_f
		c_degrees = (f_degrees - 32) * 5/9
		puts "#{f_degrees} degrees Celsius is equal to #{c_degrees} degrees Fahrenheit"
	else
		puts "Please enter 1 or 2"
	end
end

convert_temp()


