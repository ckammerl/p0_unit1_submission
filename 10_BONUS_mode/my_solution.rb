# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? 
# array of integers or array of strings

# What is the output? (i.e. What should the code return?) 
# return a new array containing the most frequent elements or 
# all elements if all elements appear with the same frequency

# What are the steps needed to solve the problem?
=begin
WRITE a method mode which takes an arr as argument
CREATE 'result' as new instance of Array with no elements
CREATE 'new_hash' as new instance of Hash

ITERATE through each of the arr elements in order to fill 'new_hash';
	the code block should assign each arr element as a key in 'new_hash'
	the code block should set the first value equal to 1 and increment the following values by 1

ITERATE through each key-value pair in 'hash_new';
	the code block should check each value
		IF value equals the maximum value in 'new.hash'
			THEN push the corresponding key to the empty array 'result'
		IFEND

RETURN array 'result' as collection of max hash key(s)
	
=end

# 2. Initial Solution

def mode(arr)
	result = []
	new_hash = Hash.new(0)
	arr.each {|num| new_hash[num] += 1 }

	new_hash.each {|k,v| 
		if v == new_hash.values.max 
		result.push(k)
		end
	}

	return result
end 


# 3. Refactored Solution

def mode(arr)
	result = []
	new_hash = Hash.new(0)
	arr.each {|element| new_hash[element] += 1 } # using element instead of num as element can by integer or string

	new_hash.each {|k,v| if v == new_hash.values.max then result.push(k) end } # one line if statement
	return result
end 


# 4. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I had to do some research before I found the solution I used above; First I tried to get the solution by iterating 
through the source with the method .each until a certain condition was true; I used the method .count(0) and an if statement;
The result was a new array with the source elements whose frequency was higher than 1. 
Calling the method .uniq on the new array deleted all the dublicates but I still had ALL elements with a higher freq than 1.. 
so that strategy didn't work. 

new_arr = []
i = 0
while i < arr.length
	if element.count(arr[i]) > 1
		new_arr.push(arr[i])
	end
end 

return new_arr.uniq

What questions did you have while coding? What resources did you find to help you answer them?
Enumerable .max() -- http://www.ruby-doc.org/core-2.1.1/Enumerable.html#method-i-max
Hash .values() -- http://www.ruby-doc.org/core-2.1.1/Hash.html#method-i-values
Array .uniq() -- http://ruby-doc.org/core-2.1.1/Array.html#method-i-uniq
Array .count() and .count(n) -- http://ruby-doc.org/core-2.1.1/Array.html#method-i-count
Hash, Find largest value in hash -- http://stackoverflow.com/questions/6040494/how-to-find-the-key-of-the-largest-value-hash

Did you learn any new skills or tricks?
A learned a couple of methods listed above. I think the research I did and the resulting blog post on Arrays vs Hashes helped me to come up with this solution!

How confident are you with each of the learning objectives? confident, but definitly room for improvment :)

=end
