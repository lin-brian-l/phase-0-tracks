# Virus Predictor

# I worked on this challenge [by myself, with: Brian Lin, Catherine Rice].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#Require_relative creates a link between two files.
#Require links by an absolute path between two files while require_relative links two documents in the same directory.
#Require can link to libraries using 'path'.
require_relative 'state_data'

class VirusPredictor
#Creates a new instance of the class VirusPredictor and then takes in as arguments the instance variables/attributes.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#Calling the predicted_deaths and speed_of_spread methods, which are defined below.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

#Calculating the number of deaths by multiplying population by a number, and based on population density. Prints a statement at the end saying how many people will die in each state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      r = 0.4
    elsif @population_density >= 150
      r = 0.3
    elsif @population_density >= 100
      r = 0.2
    elsif @population_density >= 50
      r = 0.1
    else
      r = 0.05
    end
    number_of_deaths = (@population * r).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

#Calculating speed of spread based on population density. Prints a statement at the end saying how fast the virus will spread in a number of months.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#Create a loop and iterate through state data.
STATE_DATA.each do |state, pop_info|
  test = VirusPredictor.new(state, pop_info[:population_density], pop_info[:population])
  test.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
1. The first syntax is showing how to set a string as a key, while the second syntax is showing how to set a symbol as a key. The first method requires a hash rocket, whereas the second does not and saves processing time in Ruby.
2. require_relative links a ruby file within the same directory, whereas require would need the exact directory of the ruby file to be linked.
3. .each, .each_index, .each_key, and .each_pair are different ways to iterate through a hash. However, .each and .each_pair seem to be identical and .each_index and .each_key only iterate through each index and key, respectively.
4. virus_effects was having two methods use parameters even though those parameters were not used within the method.
5. I solidified how to iterate through nested hashes; without a tip from our GPS guide, finding the exact value within the nested hash would have been more time-consuming.