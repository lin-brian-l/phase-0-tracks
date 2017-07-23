=begin
Pseudocode
1. Ask for all information
	a. Store information as proper variable types
	b. Loop to re-prompt user as needed
2. Create hash with keys as symbols and values as stored answers.
3. Print out hash.
4. Ask user to update key.
5. Loop 3 and 4 as necessary.
=end

#Asking for information
puts "What is the client's name?"
client_name = gets.chomp

age_flag = false
until age_flag
	puts "What is the client's age?"
	begin
		client_age = Integer(gets)
		age_flag = true
	rescue ArgumentError
		puts "Please enter an integer for the client's age."
	end
end

children_flag = false
until children_flag
	puts "How many children does the client have?"
	begin
		client_children = Integer(gets)
		children_flag = true
	rescue ArgumentError
		puts "Please enter an integer for the number of children that the client has."
	end
end

puts "What decor theme does the client want?"
client_decor = gets.chomp

price_flag = false
until price_flag
	puts "Does the client have a high price range (y/n)?"
	client_price = gets.chomp.downcase
	if client_price == "y"
		client_price = true
		price_flag = true
	elsif client_price == "n"
		client_price = false
		price_flag = true
	else
		puts "Please enter a 'y' or 'n' for the client's price range."
	end
end

#Creating hash
client_info = {
	cname: client_name,
	cage: client_age,
	cchildren: client_children,
	cdecor: client_decor,
	cprice: client_price
}

puts
puts client_info

#Updating hash
update_flag = false
until update_flag
	puts
	puts "Would you like to add or update an existing field?"
	puts "	-type 'add' to add to the client's information."
	puts "	-type 'name' for 'client name'."
	puts "	-type 'age' for 'client age'."
	puts "	-type 'children' for 'client children'."
	puts "	-type 'decor' for 'client decor'."
	puts "	-type 'price' for 'client price'."
	puts " 	-type 'exit' to finish."

	input = gets.chomp.downcase
	case input
	when "add"
		puts "Enter a field to add to the client's information."
		field_key = gets.chomp.to_sym
		puts "Enter the information with that field."
		field_value = gets.chomp
		client_info[field_key] = field_value
	when "name"
		puts "What is the client's updated name?"
		client_name = gets.chomp
		client_info[:cname] = client_name
	when "age"
		age_flag = false
		until age_flag
			puts "What is the client's updated age?"
			begin
				client_age = Integer(gets)
				client_info[:cage] = client_age
				age_flag = true
			rescue ArgumentError
				puts "Please enter an integer for the client's updated age."
			end
		end
	when "children"
		children_flag = false
		until children_flag
			puts "How many children does the client have?"
			begin
				client_children = Integer(gets)
				client_info[:cchildren] = client_children
				children_flag = true
			rescue ArgumentError
				puts "Please enter an integer for the updated number of children that the client has."
			end
		end
	when "decor"
		puts "What is the client's updated decor preference?"
		client_decor = gets.chomp
		client_info[:cdecor] = client_decor
	when "price"
		price_flag = false
		until price_flag
			puts "Does the client have a high price range (y/n)?"
			client_price = gets.chomp.downcase
			if client_price == "y"
				client_price = true
				price_flag = true
			elsif client_price == "n"
				client_price = false
				price_flag = true
			else
				puts "Please enter a 'y' or 'n' for the client's price range."
			end
		end
		client_info[:cprice] = client_price
	when "exit"
		update_flag = true
		puts
		puts "Thanks for using this program!"
		break
	else
		puts "Please select one of the above options."
	end
	puts
	p client_info
end