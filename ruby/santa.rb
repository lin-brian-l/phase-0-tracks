class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(x)
		puts "That was a good #{x}!"
	end

	def initializ #"initialize" was already a private method, so name couldn't be used.
		puts "Initializing Santa instance..."
	end
end

santa1 = Santa.new

santa1.speak
santa1.eat_milk_and_cookies("chocolate chip")
santa1.initializ