# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}


# Person 3
def my_array_sorting_method(source)
  result = source.sort_by { |element| element.to_s.downcase }
  return result
end

# => [2, 3, ":(.", "but", "have", "I", "I", "only", "pets", "want"]  
# Note: we only use the methods .to_s and .downcase in the block and therefore as key for how to sort; the returned array's elements are sorted accordingly but have not changed!

=begin
	alternative solution using .sort:

	def my_array_sorting_method(source)
		result = []
		source.each { |element| result.push(element.to_s.downcase) } 
		return result.sort 
	end 

# => ["2", "3", ":(.", "but", "have", "i", "i", "only", "pets", "want"]  
# Note: as we stored our result of the method .each in the array result and then call .sort on result, the returned array's elements have changed and are all strings and lowercase!
	

=end



def my_hash_sorting_method(source)
  result = source.sort_by { |key, value| value }
  return result
end

# => [["Annabelle", 0], ["Ditto", 3], ["Hoobie", 3], ["Poly", 4], ["Bogart", 4], ["Evi", 6], ["George", 12]]


# Identify and describe the ruby method you implemented. 
=begin

	You can use the methods .sort or .sort_by {block} to sort an array or a hash

	source.sort_by() {block} returns source as an array sorted according to the block of code you defined
	example: 
		hash.sort_by {|key, value| value} returns an array sorted by the hash.values, in our case integers starting with the smallest integer
		array.sort_by {|word| word.length} returns an array with its element sorted by lengths starting with the shortest word

	source.sort returns source as an array with the source's elements sorted according to their own <=> method:
	example:
		String.sort prioritizes upper case letters to lower case letters; prioritizes numbers as a string ("8") to letters/ words ("pets"); sorts letters a-z
	
	Note: in order to call source.sort or source.sort_by {block}, ALL source's elements must be of the same class, i.e. String or Fixnum (or a mix of Fixnum and Float)
	In our case, we solve the problem by calling the method .to_s on each of the source elements
	In order to sort it in the correct alphatical order, we also have to call .downcase on each of the source elements

=end




################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets, "pets") == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages, age) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!

=begin 
What parts of your strategy worked? What problems did you face?
I knew that .sort would be the solution to the problem; I looked up the difference between .sort_by and .sort once again
to come up with the best solution I can think of. 


What questions did you have while coding? What resources did you find to help you answer them?
http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-sort
http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-sort_by

What concepts are you having trouble with, or did you just figure something out? If so, what?
The challenge helped me memorize that I can only sort elements of the same class and that .sort/.sort_by return an array

How confident are you with each of the learning objectives?
Find and use built-in Ruby methods to solve challenges - confident
Iterate through data structures and manipulate the content - confident
Explain how to use an existing ruby method - confident


Which parts of the challenge did you find tedious?

I was confused by the DBC direction in combination with the given empty methods 'i_want_pets' and 'my_family_pets_ages' which BOTH were to take two parameters.
DBC directions: 	I want to create a sorting method that alphabetizes an array. 
					I also want to create a sorting method that arranges the data in my hash by age (starting with the youngest first).
In order to solve the challenge according to the directions above, I do not need my solutions (methods) to take two parameters. 
Especially thinking of the hash, my solution should sort the hash elements by value from youngest to oldest; no second argument is necessary to accomplish this task.

=end 