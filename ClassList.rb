def classList
	classlist = []
	keepadding = true

	while keepadding == true
		puts "Would you like to add another student?"
		answer = gets.chomp
		if answer != "yes" && answer !="no"
			puts "Please put yes or no"
		elsif answer == "yes"
			puts "What is the student's name?"
			name = gets.chomp
			classlist.push(name)
				puts "The array of students now looks like: #{classlist}"
		else
			for num in (0..classlist.length-1)
				puts "The student at index #{num} is #{classlist[num]}"
			end
			keepadding = false
		end
	end
end

classList()



