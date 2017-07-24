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

def vowel_lower(x)
	vowel_lower = "aeiou"
	if x == "u"
		return "a"
	else
		return vowel_lower[vowel_lower.index(x)+1]
	end
end

def consonant_lower(x)
	consonant_lower = "bcdfghjklmnpqrstvwxyz"
	if x == "z"
		return "b"
	else
		return consonant_lower[consonant_lower.index(x)+1]
	end
end

def vowel_upper(x)
	vowel_upper = "AEIOU"
	if x == "U"
		return "A"
	else
		return vowel_upper[vowel_upper.index(x)+1]
	end
end

def consonant_upper(x)
	consonant_upper = "BCDFGHJKLMNPQRSTVWXYZ"
	if x == "Z"
		return "B"
	else
		return consonant_upper[consonant_upper.index(x)+1]
	end
end

repeat = false
record = {}
vowel_lower = "aeiou"
consonant_lower = "bcdfghjklmnpqrstvwxyz"
vowel_upper = "AEIOU"
consonant_upper = "BCDFGHJKLMNPQRSTVWXYZ"
until repeat
	puts "Enter a name to get a pseudonym. If you want to stop, type 'quit'."
	pseudonym = gets.chomp
	if pseudonym == "quit"
		repeat = true
		puts
		record.each {|key, value| puts "#{value} is actually #{key}."}
	else
		#next vowel and consonant
		vowel_upper = vowel_lower.upcase
		consonant_upper = consonant_lower.upcase
		new_pseudonym = []
		pseudonym.chars.each do |x|
			new_pseudonym.push(vowel_lower(x)) if vowel_lower.include? x
			new_pseudonym.push(consonant_lower(x)) if consonant_lower.include? x
			new_pseudonym.push(vowel_upper(x)) if vowel_upper.include? x
			new_pseudonym.push(consonant_upper(x)) if consonant_upper.include? x
			new_pseudonym.push(" ") if x == " "
		end
		new_pseudonym = new_pseudonym.join
		puts "Your pseudonym is #{new_pseudonym}."
	end
	record[pseudonym] = new_pseudonym
	#swap first and last name
	#puts pseudonym.split(" ").reverse.join(", ")
end