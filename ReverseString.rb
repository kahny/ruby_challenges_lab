=begin
Challenge 3 - Reverse a string

Reverse a string in place. In other words, do not create a new string or use other methods on the string such as reverse. The goal of the problem is to use a loop and the string accessors to figure out which values to swap for other values.
=end

def reverse
	puts "Enter a string and we will reverse it"
	str = gets.chomp
	length = str.length.to_i
	numSwitch = (str.length - 2).to_i  #the number of switches is always going to be the str.length - 2 (for odd middle number will be swapped with itself, for even only even number will be swapped)

	for num in (0..numSwitch)
		swap1 = str[num]
		swap2 = str[length-(num+1)]
		str[num] = swap2
		str[length-(num+1)] = swap1
	end
	puts str
end

reverse()





=begin
workthrough:

string = "01234"
string.length = 5

swap :
0 - 4 string[0] - string[4]
1 - 3 string[1] - string[3]
2 - 2 string[2] - string[2]

=end
