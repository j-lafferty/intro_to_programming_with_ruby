#Exercises
=begin
Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
=end
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |x| puts x }


=begin
Same as above, but only print out values greater than 5.
=end
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |x| puts x if x > 5 }

=begin
Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
=end
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_arr = arr.select { |num| num.odd? }

p odd_arr

=begin
Append 11 to the end of the original array. Prepend 0 to the beginning.
=end
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.push(11).unshift(0)
p arr

=begin
Get rid of 11. And append a 3.
=end
arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
arr.pop
arr << 3
p arr

=begin
Get rid of duplicates without specifically removing any one value.
=end
arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]
arr.uniq!
p arr

=begin
What's the major difference between an Array and a Hash?
=end
hash contains key-value pairs

=begin
Create a Hash, with one key-value pair, using both Ruby syntax styles.
=end
h1 = { beer: 1 }

h2 = Hash.new
h2[:taco] = 2

h3 = { :baseball => 3 }

=begin
Suppose you have a hash h = {a:1, b:2, c:3, d:4}

1. Get the value of key `:b`.

2. Add to this hash the key:value pair `{e:5}`

3. Remove all key:value pairs whose value is less than 3.5
=end
h = {a:1, b:2, c:3, d:4}

p h[:b]

h[:e] = 5

h.delete_if { |k, v| v < 3.5 }

=begin
Can hash values be arrays? Can you have an array of hashes? (give examples)
=end
yes
h1 = [ {food: 'taco'}, {drink: 'beer'}, {sport: 'baseball'} ]
h2 = { food: ['taco', 'pizza', 'nachos'] }

=begin
Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }
=end
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


=begin
Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
=end
p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]


=begin
Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
=end
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |s| s.start_with?("s") }
arr.delete_if { |s| s.start_with?("s", "w") }

=begin
Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
=end
a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

a = a.map { |str| str.split(' ') }
a = a.flatten
p a

=begin
What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
=end
"These hashes are the same!"

=begin
Challenge: In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.
=end

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

entry = [:email, :address, :phone]

contacts.each do |person, info|
  entry.each { |entry| info[entry] = contact_data.shift }
end

p contacts
