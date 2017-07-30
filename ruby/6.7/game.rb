#Declare class and methods
class GuessingGame

	attr_reader :hidden, :user1_input, :history, :guesses, :tries, :guesses

	def initialize(user1_input)
		@user1_input = user1_input.split("")
		@history = []
		@guesses = user1_input.length * 2
		@tries = 0
		@hidden = @user1_input.map { |x| x = "_"}
	end

	def compare(user2_input)
		switch = false

		if !@history.include?(user2_input) #Check if user 2 input wasn't tried
			@history << user2_input

			@user1_input.each_index do |x| #Go through each index value of word to guess...

				#Replace "_" with character in @hidden array if user input matches character at index of word to guess
				if user2_input == @user1_input[x] 
					@hidden[x] = @user1_input[x]
					switch = true
				end

			end

			@tries += 1
			@guesses -= 1

			if !switch #User 2 input was not in word to guess
				puts "Sorry, try again!"
			end

		else
			puts "Sorry, you've already guessed that letter! Try again!"
		end
	end

	#Test if User 2 enters 1 letter at a time
	def repeat(user2_input)
		until (user2_input.length == 1) && ("abcdefghijklmnopqrstuvwxyz".include? user2_input)
			puts "Please only guess 1 letter at a time!"
			user2_input = gets.chomp
		end
	end
end

#Driver Code

#Start game - Player 1 input
puts "Let's play a game - one person writes a word, then another person guesses it! Player 1, input a word!"
user1_input = gets.chomp.downcase
game = GuessingGame.new(user1_input)

#Clear screen
print "\e[H\e[2J"

#Give Player 2 feedback about hidden word
puts
puts game.hidden.join(" ")

#Player 2 input - first guess
puts "\nNow for Player 2! Guess one letter at a time, just like Wheel of Fortune!"
user2_input = gets.chomp
game.repeat(user2_input)

loop do #Play game until win or loss condition is met
	game.compare(user2_input)
	puts "\nYou've guessed #{game.tries} time(s), have #{game.guesses} guesses remaining, and have previously tried #{game.history}."
	puts "\n#{game.hidden.join(" ")}"

	#Loss condition
	puts "\nSorry, you've run out of guesses - game over!" if game.guesses == 0

	#Win condition
	puts "\nCongratulations, you've won!" if game.hidden.join("") == game.user1_input.join("")

	#Stop game when win or loss condition is met
	break if (game.hidden.join("") == game.user1_input.join("")) || game.guesses == 0

	#Enter next letter
	user2_input = gets.chomp
	game.repeat(user2_input)
	
end