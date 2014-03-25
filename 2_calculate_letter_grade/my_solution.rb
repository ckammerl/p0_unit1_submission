# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
# input is an array of numbers

# What is the output? (i.e. What should the code return?)
# output is a string

# What are the steps needed to solve the problem?

=begin
1. write a method get_grade 
2. the method 'get_grade' takes an array of integers in the range 
	of 0 to 100 as an argument and returns the letter grade A to F as a 
	string based on the average:
	average >= 90 returns "A"
	average >= 80 returns "B"
	average >= 70 returns "C"
	average >= 60 returns "D"
	average  < 50 returns "F"
=end

# 2. Initial Solution

def get_grade
end

def get_grade(array)
	sum = array.inject(0) {|sum, n| sum + n}
	average = sum / array.length
	case average
	when 90..100 
		result = "A"
	when 80..90
		result = "B"
	when 70..80
		result = "C"
	when 60..70
		result = "D"
	when 0..60
		result = "F"
	end 
	return result
end 



# 3. Refactored Solution

def get_grade(array)
	grade_sum = array.inject(0) {|sum, n| sum + n}
	grade_average = grade_sum / array.length
	case grade_average
	when 90..100 
		grade = "A"
	when 80..90
		grade = "B"
	when 70..80
		grade = "C"
	when 60..70
		grade = "D"
	when 0..60
		grade = "F"
	end 
	return grade
end 



# 4. Reflection 

=begin
What parts of your strategy worked? What problems did you face?
My first idea and strategy worked

Did you learn any new skills or tricks?
I looked up the method .inject() {}  based on a comment a class mate added to my solution of 1_calculate_array_total at GitHub; I now understand
how to use that method to summarize an array; as a result, the code looks very clean.

How confident are you with each of the learning objectives?
--Use tests to guide development - confident; I used rspec --color --format doc in the terminal to make it easier to read
--Break down problems into implementable pseudocode - confident and still trying to make it shorter without loosing precision
--Find and use built-in Ruby methods to solve challenges - confident
--Use if/else statements, regular expressions, string methods, while/until loops, Enumerable#each methods - confident; I want to improve my skill to 
define the correct return value in my code right away
	
=end

