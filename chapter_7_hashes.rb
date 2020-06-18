#Exercises
=begin 
Question #1:
Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          } 
=end
#Question #1 solution
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          } 
immediate_family = family.select { |k, v| k == :sisters || k == :brothers }

arr = immediate_family.values.flatten

puts arr

=begin 
Question #2
Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
=end
#Question #2 solution
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }

puts h1.merge(h2) #does not mutate h1
puts h1
puts h2

h3 = { "a" => 100, "b" => 200 }
h4 = { "b" => 254, "c" => 300 }

puts h3.merge!(h4) #mutates h3 due to bang operator
puts h3
puts h4

=begin 
Question #3
Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
=end
#Question #3 solution
h1 = { a: 1, b: 2, c: 3, d: 4, e: 5 }

h1.each_key { |k| p k }
h1.each_value { |v| p v }
h1.each { |k, v| p "#{k} is #{v}" }


=begin 
Question #4
Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
=end
#Question #4 solution
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

=begin
Question #5
What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
=end
#Question #5 solution
h1 = { a: 1, b: 2, c: 3, d: 4, e: 5 }
puts h1.has_value?(4)
puts h1.has_value?(6)

=begin 
Question #6
Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
What's the difference between the two hashes that were created?
=end
#Question #6 solution
x = "hi there"
my_hash = {x: "some value"} #x key is a symbol and immutable
my_hash2 = {x => "some value"} #x key is a string and mutable

=begin 
Question #7
If you see this error, what do you suspect is the most likely problem?

NoMethodError: undefined method `keys' for Array
A. We're missing keys in an array variable.

B. There is no method called keys for Array objects.

C. keys is an Array object, but it hasn't been defined yet.

D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.
=end
#Question #7 solution

B. There is no method called keys for Array objects.

=begin 
Question #8
Challenge: Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
(etc) 
=end
#Question #8 solution
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

result = {}

words.each do |word|
  k = word.split('').sort.join
  result.has_key?(k) ? result[k].push(word) : result[k] = [word]
end

result.each_value { |v| p v }
