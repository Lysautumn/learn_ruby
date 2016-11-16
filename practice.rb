# prints string
print 'Hello World!'

# print can also be used to get input
print "What's your cat's name?"

# assigning user's response to a variable
cat_name = gets.chomp

# capitalize the first letter in the variable permanently
cat_name.capitalize!
puts "Your cat's name is #{cat_name}!"

# unless is similar to an if-else statement
sleepy = false

unless sleepy
  puts "Let's write more code!"
else
  puts "Ok, I'm done for today"
end
