=begin
calculator
=end

def calculate
	puts "Welcome to this simpleton calculator. What calculation would you like to do? (add, sub, mult, div)"
	method = gets.chomp
	#check if user ented a valid method
	if method != "add" && method != "sub" && method != "mult" && method != "div"
		puts "please put add, sub, mult or div for your calculation"
		calculate()
	else
		puts "What is number 1?"
		num1 = gets.chomp.to_f
		puts "What is number 2?"
		num2 = gets.chomp.to_f
		if method == "add"
			sum = num1 + num2
			puts "The sum of #{num1} and #{num2} is #{sum}"
		elsif method == "sub"
			diff = num1 - num2
			puts "The difference of #{num1} and #{num2} is #{diff}"
		elsif method == "mult"
			prod = num1 * num2
			puts "The product of #{num1} and #{num2} is #{prod}"
		else
			div = num1 / num2
			puts "The result of #{num1} divided by #{num2} is #{div}"
		end
	end
end

calculate()