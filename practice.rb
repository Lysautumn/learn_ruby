# prints string
print 'Hello World!'

# print can also be used to get input
print "What's your cat's name?"

# assigning user's response to a variable
cat_name = gets.chomp

# capitalize the first letter in the variable permanently
cat_name.capitalize!
puts "Your cat's name is #{cat_name}! So cute!"

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

#boolean practice
# test_1 should be true
test_1 = ( 10 == 10 ) && ( 5 == 5 )

# test_2 = should be true
test_2 = ( 10 == 10 ) || !( 100 == 100 )

# test_3 = should be false
test_3 = ( 11 == 10 ) && !( 100 == 100 )

#Daffy Duckify challenge:
print "Thtring Pthleathe!"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
    puts "Your thtring ith: #{user_input}"
else
    print "Your thtring ith fine ath it ith!"
end

# while loop
i = 0
while i < 5
  puts i
  # Add your code here!
  i = i + 1
end

# until loop
counter = 1
until counter > 10
  puts counter
  counter += 1
end

# for loop
for num in 1..15 # this means loop each number between 1 and 15, including 15
  puts num
end

for num in 1...10 # this means loop each number between 1 and 10, excluding 10
  puts num
end

# loop iterator
i = 20
loop do
  i -= 1
  next if i % 2 != 0 # next if will skip numbers in the iteration
  print "#{i}"
  break if i <= 0 # break if will end the loop, stop an infinite loop
end

# times iterator
5.times do
    print "Hello World"
end

# Iteration
puts "Give me a sentence"
text = gets.chomp
puts "Give me a word"
redact = gets.chomp
words = text.split(" ")
words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end
end

# iteration over multi-dimensional array to print out each element
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array| sub_array.each { |element| puts element } }

# iterating over hashes
lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each do
    |name, order| puts "#{order}"
end

# create a Histogram
puts "Give me a sentence!"
text = gets.chomp
words = text.split
frequencies = Hash.new(0)
words.each do
    |word| frequencies[word] +=1
end
frequencies = frequencies.sort_by do
    |word, count| count
end
frequencies.reverse!
frequencies.each do |word, count|
    puts word + " " + count.to_s
end

# methods (similar to JS functions)
def greeter(name)
    return "Hello, #{name}!"
end

def by_three?(number)
    if number % 3 == 0
        return true
    else
        return false
    end
end

# Ruby Symbols (are not strings)
symbol_hash = {
  :one => 1,
  :two => 2,
  :one_hundred => 100,
}

# converting between strings and symbols
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []

strings.each do |s|
    symbols.push(s.intern)
end

# hash rockets and snarky movie descriptions
movies = {
    :titanic => "Poor guy dies on a shipwreck after ruining a marriage",
    :star_wars => "Poor guy loses family then realizes he has superpowers"
}

# new hash syntax and same movie descriptions
movies = {
    titanic: "Poor guy dies on a shipwreck after ruining a marriage",
    star_wars: "Poor guy loses family then realizes he has superpowers"
}

# case statement
case choice
when "add"
    puts "Added!"
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end

# CRUD program
movies = {
    the_princess_bride: 5
}

puts "What do you want to do?"

choice = gets.chomp

case choice
when "add"
    puts "Please give me a movie title"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "How would you rate the movie (1-5)?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "Added!"
    else
        puts "That movie already exists!"
    end
when "update"
    puts "Please give me a movie title"
    title = gets.chomp
    if movies[title].nil?
        puts "Sorry, that movie doesn't exist"
    else
        puts "Please give the movie a new rating (1-5)"
        rating = gets.chomp
        movies[title] = rating.to_i
        puts "Updated!"
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when "delete"
    puts "What movie would you like to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Sorry, that movie doesn't exist"
    else
        movies.delete(title)
    end
else
    puts "Error!"
end

# ternary conditional expression: boolean, expression to evaluate if true, expression to evaluate if false
puts 10 < 100 ? "10 is less than 100!" : "10 is not less than 100!"

# Conditional assignment operator (only assign a value to a variable if nothing has been assigned to it)
favorite_language ||= "Ruby"
puts favorite_language

# concatenation operator ("The Shovel")
alphabet = ["a", "b", "c"]
alphabet << "d"

caption = "A giraffe surrounded by "
caption << "weezards!"
