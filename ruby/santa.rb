class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age
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
	
	#Birthday method
	def celebrate_birthday
		@age += 1
	end

	#Reindeer ranking method
	def get_mad_at(x)
		@reindeer_ranking.delete(x)
		@reindeer_ranking << x
	end

	# Setter method for gender
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# Getter method for age
	# def age
	# 	@age
	# end

	# Getter method for ethnicity
	# def ethnicity
	# 	@ethnicity
	# end
end



# Release 0
# santa1 = Santa.new

# santa1.speak
# santa1.eat_milk_and_cookies("chocolate chip")
# santa1.initialize

# Release 1
# santas = {
# 	"male" => "Asian",
# 	"female" => "white",
# 	"bigender" => "middle-eastern",
# 	"n/a" => "Hispanic"
# }

# record = []
# santas.each { |gender, ethnicity| record << Santa.new(gender, ethnicity) }

# Testing Release 2 & 3
# p record[0]
# record[0].gender = "boy"
# p record[0].ethnicity
# record[0].celebrate_birthday
# record[0].get_mad_at("Prancer")
# p record[0].age
# p record[0]

# Release 4
x = Random.new

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do
	santa = Santa.new(example_genders[x.rand(0...7)], example_ethnicities[x.rand(0...7)])
	santa.age = x.rand(0..140)
	p santa
end