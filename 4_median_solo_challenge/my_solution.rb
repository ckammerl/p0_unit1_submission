# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? array of integers or array of strings
# What is the output? (i.e. What should the code return?) return the median of the array as a integer / a string resp.
# What are the steps needed to solve the problem?
=begin
1. define a method median which takes an array as input 
2. sort the elements of your array in ascending order

IF array is an array of numbers


   		IF the the number of elements in your array is odd
   			THEN get 'x' as the index of the median by dividing the array's (length - 1) by 2
   			 	 set median equal to array value at index 'x'
		ELSE
			THEN get 'y' as the index of the number next to the median by dividing the array's (length) by 2
			 	 get 'm' as the value of the median as a float by summing the value of the array at index 'y' with the value of the array at index ('y' - 1) and 
				 dividing the result by 2.0 
   			 	 set median equal to 'm'
		END

ELSIF array is an array of strings AND array.length is odd
	THEN get 'z' as the index of the median by dividing the array's (length - 1) by 2
		 set median equal to the array value at index 'z'

ELSE
	puts message "Error: The input must be either 
					a) array of numbers with an even or odd number of elements or 
					b) an array of strings with an odd number of elements."

END

3. return median

=end

# 2. Initial Solution

def median(source)
	source = source.sort

	if source.all? { |element| element.is_a? Integer }

		if source.length % 2 != 0
			x = (source.length - 1) / 2
			median = source[x]

		else
			y = source.length / 2
			m = (source[y] + source[y - 1]) /2.0
			median = m
		end

	elsif source.all? { |element| element.is_a? String } && (source.length % 2 != 0)

			z = (source.length - 1) / 2
			median = source[z]


	else
		puts "Error: The input must be either a) array of numbers with an even or odd number of elements or b) an array of strings with an odd number of elements."
	end
  median
end


# 3. Refactored Solution

def median(source)
	if source.all? { |element| element.is_a? Integer }
	   source = source.sort
		if source.length % 2 != 0
			index_median = (source.length - 1) / 2 
			median = source[index_median]

		else
			y = source.length / 2 # y is index of element next to median
			value_median = (source[y] + source[y - 1]).fdiv(2) # calling method .fdiv to receive float
			median = value_median
		end

	elsif source.all? { |element| element.is_a? String } && (source.length % 2 != 0)
		  	source = source.sort_by { |element| element.downcase } # sorting by key element.downcase
		  	index_median = (source.length - 1) / 2 
			median = source[index_median]

		else
			puts "Error: The input must be either\n a) array of integers with an even or odd number of elements or\n b) an array of strings with an odd number of elements."
	end
  return median
end


# 4. Reflection 

=begin
What parts of your strategy worked? What problems did you face?
I had to look up methods to check if the source was an array of integers or an array of strings

What questions did you have while coding? What resources did you find to help you answer them?
check if element of array is instance of certain class with .all? {block} http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-all-3F
division by float with .fdiv(): http://www.ruby-doc.org/core-2.1.0/Fixnum.html#method-i-fdiv

How confident are you with each of the learning objectives?
confident

Which parts of the challenge did you enjoy?
repeating the strategy to define the median and strenghtening the knowledge

Which parts of the challenge did you find tedious?
I can't think of an use case when defining the median on an array of strings with an even number of elements makes sense


=end
















