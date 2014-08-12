=begin
Challenge 4 - Bank Transactions

Create a prompt that asks the user if they would like to display their balance, withdraw or deposit. Write three methods to perform these calculations and output the result to the user. Here is a sample output:
=end


def guessing
	secretNumber = 1 + rand(100)
	count = 0
	done = false
	while done == false do
		puts "Guess a number between 1 and 100"
		guess = gets.chomp.to_i
		if guess > secretNumber
			puts "The number is lower than #{guess}, guess again"
			count +=1
		elsif guess < secretNumber
			puts "The number is higher than #{guess}, guess again"
			count +=1
		else
			count+=1
			puts "You got it in #{count} tries"
			done = true
		end
	end
end

guessing()

