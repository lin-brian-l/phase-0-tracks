=begin
Planning Encryption:
Start index counter at 0
While counter is shorter than code length
  If character at index # is a space, print space
  Otherwise, print next character at index #
Add 1 to index counter
=end

=begin
Planning Decryption:
Start index counter at 0
Create string containing alphabet for decryption
While counter is shorter than code length
  If character at index # is a space, print space
  Otherwise:
    Find index of the character provided by string (based on index counter)
    Print index of alphabet that is -1 the index found before.
Add 1 to index counter
=end

#Encryption Method
def encrypt(code)
  index = 0
  while index < code.length
    if code[index] == " "
      code[index] = code[index]
    elsif code[index] == "z"
      code[index] = "a"
    else
      code[index] = code[index].next
    end
    index += 1
  end
  return code
end

#Decryption Method
def decrypt(string)
  index = 0
  alaphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < string.length
    if string[index] == " "
      string[index] = string[index]
    else
      new = alaphabet.index(string[index])
      string[index] = alaphabet[new-1]
    end
    index += 1
  end
  return string
end

#Release 3
=begin
puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")
=end

#Release 4
=begin
puts decrypt(encrypt("swordfish"))
#This works because we are decrypting (shifting letters backward) after encrypting (shifting letters forward) the string. 
#We changed the variable and stored it with return rather than printing it, allowing it to be passed on as an argument in the decrypt method.
=end

#Driver Code
flag = false
until flag 
  puts "Would you like to decrypt (d) or encrypt (e) a password?"
  user_selection = gets.chomp
  if user_selection == "d"
    puts "You have selected decryption."
    puts "Enter a password to decrypt."
    user_password = gets.chomp
    decrypt(user_password)
    puts "Your decrypted password is #{user_password}."
    flag = true
  elsif user_selection == "e"
    puts "You have selected encryption"
    puts "Enter a password to encrypt."
    user_password = gets.chomp
    encrypt(user_password)
    puts "Your encrypted password is #{user_password}."
    flag = true
  else
  end
end