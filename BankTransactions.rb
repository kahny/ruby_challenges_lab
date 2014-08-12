=begin
Challenge 4 - Bank Transactions

Create a prompt that asks the user if they would like to display their balance, withdraw or deposit. Write three methods to perform these calculations and output the result to the user. Here is a sample output:
=end



def banking
currentBalance = 4000
done = false
	while done == false do
		puts "Your current balance is #{currentBalance}"
		puts "What would you like to do? (deposit, withdraw, check_balance)?"
		activity = gets.chomp

		if activity != "deposit" && activity != "withdraw" && activity != "check_balance"
			puts "Please enter either deposit, withdraw, or check_balance"
			banking()

		elsif activity == "deposit"
			puts "How much would you like to deposit?"
			deposit = gets.chomp.to_i
			currentBalance = currentBalance + deposit
			puts "Your current balance is #{currentBalance}"

		elsif activity == "withdraw"
			puts "How much would you like to withdraw?"
			withdrawal = gets.chomp.to_i
			currentBalance = currentBalance - withdrawal
			puts "Your current balance is #{currentBalance}"

		else
			puts "Your check balance is #{currentBalance}"
		end

		puts "Are you done? (yes or no)"
		response = gets.chomp
		if response == "yes"
			puts "Thank you!"
			done = true
		end
	end #end to while done == false
end


banking()

