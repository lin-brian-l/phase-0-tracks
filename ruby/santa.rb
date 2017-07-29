class Santa
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(x)
		puts "That was a good #{x}!"
	end
	
end

# Release 0
# santa1 = Santa.new

# santa1.speak
# santa1.eat_milk_and_cookies("chocolate chip")
# santa1.initialize

# Release 1
santas = {
	"male" => "Asian",
	"female" => "white",
	"bigender" => "middle-eastern",
	"n/a" => "Hispanic"
}

record = []
santas.each { |gender, ethnicity| record << Santa.new(gender, ethnicity) }
