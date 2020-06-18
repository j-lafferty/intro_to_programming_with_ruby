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


=begin 
Question #2
Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
=end
#Question #2 solution


=begin 
Question #3
Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
=end
#Question #3 solution


=begin 
Question #4
Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
=end
#Question #4 solution


=begin
Question #5
What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
=end
#Question #5 solution


=begin 
Question #6
Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
What's the difference between the two hashes that were created?
=end
#Question #6 solution


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