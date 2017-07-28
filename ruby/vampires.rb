#Repeating Loop
puts "How many employees will be processed?"
repeat = gets.chomp.to_i
repeat.times do

	#Initial Questionnaire
	puts
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.to_i
	puts "What year were you born?"
	year = gets.to_i
	puts "Our company serves garlic bread. Should we order some for you? (y/n)"
	order = gets.chomp.downcase
	ordered_garlic = order == "y"
	puts "Would you like to enroll in the company's health insurance? (y/n)"
	insurance = gets.chomp.downcase
	enroll_insurance = insurance == "y"

	correct_age = (year = Time.now.year - age)

	#Allergy Survey
	allergy = ""
	puts "List all allergies that you have. Enter 'done' when you are finished."
	until allergy == "done"
		allergy = gets.chomp
		if allergy == "sunshine"
			result = "Probably a vampire."
			break
		end
	end 

	#Analyzing Results
	if result != "Probably a vampire."
		result = "Results inconclusive"
		if correct_age && (ordered_garlic || enroll_insurance)
			result = "Probably not a vampire."
		end

		if (correct_age == false) && (!ordered_garlic || !enroll_insurance)
			result = "Probably a vampire."
		end

		if (correct_age == false) && (!ordered_garlic) && (!enroll_insurance)
			result = "Almost certainly a vampire."
		end 

		if name == "Drake Cula" || name == "Tu Fang"
			result = "Definitely a vampire."
		end
	end

	#Printing Result
	puts
	puts result
	puts
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 
