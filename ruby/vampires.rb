puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.to_i
puts "What year were you born?"
year = gets.to_i
puts "Our company serves garlic bread. Should we order some for you (y/n)"
order = gets.chomp
puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp

puts case
	when name == ("Drake Cula" || "Tu Fang")
		puts "Definitely a vampire."
	when (age == 2017 - year) && (order.downcase == "y" || insurance.downcase == "y")
		puts "Probably not a vampire."
	
end 
