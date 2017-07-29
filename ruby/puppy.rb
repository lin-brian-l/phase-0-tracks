# Release 0
# Species ------------------
# American Eskimo

# Characteristics ----------
# Fur color: white
# Female Size: small
# Male Size: Large
# Name: Varies

# Behavior ----------------
# Lick
# Eat
# Bark
# Jump

class Puppy
end

# Release 1
p Puppy.methods

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

p spot.class
p duchess == fido
p fido.instance_of?(Array)
p fido.instance_of?(Puppy)
spot.play_dead