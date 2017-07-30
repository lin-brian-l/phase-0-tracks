# Release 1
# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end

# Release 3
module Shout
	def yell(words)
		words.upcase + "!!!"
	end
end

class Angry_Person
	include Shout
end

class Referee
	include Shout
end

neighbor = Angry_Person.new
puts neighbor.yell("hey")

ref = Referee.new
puts ref.yell("you")