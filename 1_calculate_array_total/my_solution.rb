# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?

# the input of the method 'total' should be an array of numbers (Fixnum and/or Float)
# the input of the method 'sentence_maker' should be an array of strings 

# What is the output? (i.e. What should the code return?)

# the output returned by the method 'total' should be the sum of all array elements, i.e. a Fixnum or Float
# the output returned by the method 'sentence_maker' should be a single string (sentence) containing all input array elements, starting with 
# a capitalized letter and ending with a period


# What are the steps needed to solve the problem?

# 1. write a method "total"
# 2. the method "total" should take only one argument
# 3. the method "total" should take an array of numbers as an argument and return the sum of all array elements


# 1. write a method "sentence_maker"
# 2. the method "sentence_maker" should take only one argument
# 3. the method "sentence_maker" should take an array of strings and return all elements of the array joined in a correct sentence, i.e. first letter 
# 	 has to be capitalized and the sentence needs to end with a period (.)



# 2. Initial Solution



def total()
end 

def total(argument)
end 

def total(array_of_num)
	i = 0
	sum = 0
	while i < array_of_num.length 
		sum += array_of_num[i]
		i += 1
	end 
	return sum
end



def sentence_maker()
end 

def sentence_maker(argument)
end 


def sentence_maker(array_of_strings)
	array_of_strings[0] = array_of_strings[0].capitalize 
	sentence = array_of_strings.join(" ") 
	sentence += "."
	return sentence
end 


# 3. Refactored Solution

def total(array_of_num)
	i = 0
	sum = 0
	for i in array_of_num.length 
		sum += array_of_num[i]
	end 
	return sum
end

def sentence_maker(array_of_strings)
	array_of_strings[0] = array_of_strings[0].capitalize 
	sentence = array_of_strings.join(" ") 
	sentence += "."
	return sentence
end 

# 4. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
At first, I added too many steps to my pseudocode to reflect different inputs (like array_1 and array_2); 
but that is acutally not necessary because the specs are not checking a specific input but the correctness of the method.

What questions did you have while coding? What resources did you find to help you answer them?
I had the methods coded in a short time; what took melonger was to find a way to add the period (.) to the returned sentence of 
the method sentence_maker. I tried it first by pushing " ." to the array_of_strings and therefore before
creating the new string with .join(); the problem I faced was that the returned sentence included a space between the last word and the period 
(due to .join(" ")). Adding the period to the sentence as last step, solved the problem.

How confident are you with each of the learning objectives?
-- Use Tests to guide development - I feel confident about reading and using the tests; I have to read more about require_relative though and its differnce
to require to understand it better.  
-- Break down problems into implementable pseudocode - working on making pseudocode shorter while being as precise as with using more words
-- Iterate through data structures and manipulate the content - I feel confident with iterating; I should do a better job in making clear to myself what/
which element in the array etc I actually want to manipulate and then be precise in my code
Find and use built-in Ruby methods to solve challenges - there are so many build-in methods and I definitly need to learn more; but I feel confident about
the ones I used in this challenge.
string methods, while/until loops - confident (the ones I used above)


Which parts of the challenge did you enjoy? 
I liked being back to Ruby and feeling that I haven't forgotten everything :)

=end


