# U1.W3: Pad an Array!

# I worked on this challenge [by myself].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# 1. Pseudocode

# What is the input? array (self), min size and optional pad value
# What is the output? (i.e. What should the code return?) pad returns a copy of self; pad! returns a modified (padded) self
# What are the steps needed to solve the problem?
=begin

WRITE a the Array method .pad! which takes an integer as minimum value (min) and an default pad value (x) equal to nil as arguments
SET length equal to self.length - self is an instance of Array on which you can call on .pad!
	IF self.length is less than min
		set a variable (y) equal to result of substracting self.length from min
		y times do push x into self
	ELSE
		return self
	END

WRITE the Array method .pad which behaves identically to the method .pad! but will will return a modified copy of self
INITIALIZE a new object by cloning self
	SET length equal to cloned object's length
	IF clone.length is less than min
		set a variable (y) equal to result of substracting clone.length from min
		y times do push x into clone
	ELSE
		return clone
	END
	
=end


# 2. Initial Solution

class Array 
	def pad!(min, x = nil)
		len = self.length
		if len < min
			pad_num = (min - len)
			pad_num.times do self.push(x) end
			self 
		
		else 
			self
		end 
	end

	def pad(min, x = nil)
		padded_arr = self.clone
		length = padded_arr.length
		if length < min
			pad_num = (min - padded_arr.length)
			pad_num.times do padded_arr.push(x) end
			padded_arr
		else 
			padded_arr
		end 
	end
end



# 3. Refactored Solution


	class Array 
		def pad!(min, x = nil)
		len = self.length
		if len < min
			pad_num = (min - len)
			pad_num.times do self.push(x) end
		end 
		return self
	end


	def pad(min, x = nil)	
		padded_arr = self.clone
		padded_arr.pad!(min, x)
		return padded_arr
	end
end


# 4. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
Writing the pad and pad! methods with the correct parameters and if statement worked well; I had to look up how to define a method as
Array#method and the method .clone()

What resources did you find to help you answer them?
http://alancohen.tumblr.com/post/31078056901/learning-to-code-the-hard-way-destructive-vs
http://ruby-doc.org/core-1.9.3/Object.html#method-i-clone
http://stackoverflow.com/questions/17858816/ruby-adding-new-method-to-array-class

Did you learn any new skills or tricks?
I learned how to use self as object in my method; how to clone an object in order to write a non-destructive method and to call a method within a method

How confident are you with each of the learning objectives?
Use tests to guide development - confident; this challenge clearly demonstrated why tests should be written first; they check the method in all possible ways and help
to come up with a pointed, DRY solution at the end 
Break down problems into implementable pseudocode - confident
Differentiate between and produce destructive and non-destructive methods - confident
Find and use built-in Ruby methods to solve challenges - confident

=end
















