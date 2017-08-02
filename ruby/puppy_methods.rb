class Puppy
    def initialize
        @name = name
        puts "Initializing new puppy instance ..."
    end
    def fetch(toy)
        puts "#{@name} brought back the #{toy}!"
        puts "I brought back the #{toy}!"
        toy
    end
    def speak(number)
    p "Woof! "*number
    end
  
    def roll_over
     puts "*rolls over*"
    end
  
    def dog_years(number)
     return number*7
    end
  
    def stay
        puts "*stay*"
    end
  
end
puppy = Puppy.new("Sparky")
#puppy.fetch("Toy")
#puppy.speak(5)
#puppy.roll_over
#puppy.dog_years(3)
#puppy.stay