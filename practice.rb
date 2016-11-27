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

# comparator/relational operators
is_true = 2 != 3

is_false = 2 == 3

# boolean operators
# boolean_1 = 77 < 78 && 77 < 77
boolean_1 = false

# boolean_2 = true && 100 >= 100
boolean_2 = true

# boolean_3 = 2**3 == 8 && 3**2 == 9
boolean_3 = true

# Or Operator
# boolean_1 = 2**3 != 3**2 || true
boolean_1 = true

# boolean_2 = false || -10 > -9
boolean_2 = false

# boolean_3 = false || false
boolean_3 = false

#Not operator
# boolean_1 = !true
boolean_1 = false

# boolean_2 = !true && !true
boolean_2 = false

# boolean_3 = !(700 / 10 == 70)
boolean_3 = false

# combining boolean operators
# boolean_1 = (3 < 4 || false) && (false || true)
boolean_1 = true

# boolean_2 = !true && (!true || 100 != 5**2)
boolean_2 = false

# boolean_3 = true || !(true || false)
boolean_3 = true

# practicing if else statement
a = 100
b = 1000

if a < b
    print "a is totally less than b!"
elsif a > b
    print "a is totally more than b!"
else
    print "a and b are the same!"
end

# practicing unless statement
cold = false
print "It is hot in herre" unless cold

# practicing comparators/relational operators
# test_1 should be false
test_1 = 10 == 14

# test_2 = should be false
test_2 = 2 > 8

# test_3 = should be true
test_3 = 26 < 100
