=begin
Pseudocode for next consonant + vowel
1. Create string for all consonants and all vowels, as well as blank array
2. Split name into array.
3. Check whether character in array matches character in consonant or vowel string.
4. Get index for matching character from consonant or vowel string.
5. Push character for index+1 into blank array.
6. Join all characters in array and set as new pseudonym.

Pseudocode for hash
1. Create blank hash
2. After new pseudonym is created, add user name to hash as key and add new pseudonym as value.
3. Print hash when repeat loop is broken.
=end

repeat = false
record = {}
until repeat
	puts "Enter a name to get a pseudonym. If you want to stop, type 'quit'."
	pseudonym = gets.chomp
	if pseudonym == "quit"
		repeat = true
		puts
		record.each {|key, value| puts "#{value} is actually #{key}."}
	else
		#next vowel and consonant
		vowel_lower = "aeiou"
		vowel_upper = vowel_lower.upcase
		consonant_lower = "bcdfghjklmnpqrstvwxyz"
		consonant_upper = consonant_lower.upcase
		new_pseudonym = []
		pseudonym.chars.each do |x|
			if vowel_lower.include?(x)
				new_pseudonym.push("a") if x == "u"
				new_pseudonym.push(vowel_lower[vowel_lower.index(x)+1])
			end
			if consonant_lower.include?(x)
				new_pseudonym.push("b") if x == "z"
				new_pseudonym.push(consonant_lower[consonant_lower.index(x)+1])
			end
			if vowel_upper.include?(x)
				new_pseudonym.push("A") if x == "U"
				new_pseudonym.push(vowel_upper[vowel_upper.index(x)+1])
			end
			if consonant_upper.include?(x)
				new_pseudonym.push("B") if x == "Z"
				new_pseudonym.push(consonant_upper[consonant_upper.index(x)+1])
			end
			new_pseudonym.push(x) if x == " "
		end
		new_pseudonym = new_pseudonym.join
		puts "Your pseudonym is #{new_pseudonym}."
	end
	record[pseudonym] = new_pseudonym
	#swap first and last name
	#puts pseudonym.split(" ").reverse.join(", ")
end