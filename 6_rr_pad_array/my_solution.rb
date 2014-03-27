# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge [by myself].

# 1. First Person's solution I liked

# 		What I learned from this solution
# 		I like that he used an unless statement instead of an if statement! Looping makes the code cleaner and shorter.

# Copy solution here:

class Array
def pad!(pad_size, pad_value = nil) 
  until self.length >= pad_size
    self << pad_value 
  end
  self 
end 



def pad(pad_size, pad_value = nil) 
  array_clone = self.clone 
    until array_clone.length >= pad_size
    array_clone << pad_value 
  end
  array_clone  
end 
end




# 2. Second Person's solution I liked

# 		What I learned from this solution
# 		I like that she shortend her code by including the calculation of the 'number to pad' directly into the
# 		.times() {} method

# Copy solution here:

class Array 
	def pad! n, padding=nil
		length = self.length
		if n > length
			(n-length).times { self.push(padding) }
			self
		else
			self
		end
	end
	def pad n, padding=nil
		length = self.length
		array_padded = self.clone
		if n > length
			(n-length).times { array_padded.push(padding) }
			array_padded
		else
			array_padded
		end
	end
end


# 3. My original solution:
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
		padded_arr.pad!(min, x)
		return padded_arr
	end
end


# 4. My refactored solution:
class Array
	def pad!(min, x = nil)
  		until self.length >= min # => looping until false; shortens the code and makes it more readible
    	self << x # => looping with "until" allows me to get rid of the calculation of number to pad (pad_num) and .times() {} method
 		end
  		return self 
	end 

	def pad(min, x = nil)	
		padded_arr = self.clone
		padded_arr.pad!(min, x) # => keeping my solution and calling method .pad!() in .pad()
		return padded_arr
	end
end

# 5. Reflection
=begin
Did you learn any new skills or tricks?
I really like the idea of looping with unitl instead of using an if statement! My Array#.pad!() and Array#.pad() are now shorter & cleaner.
How confident are you with each of the learning objectives?
confident

Which parts of the challenge did you enjoy?
After thinking it through and finding the best solution I can think of, looking at class-mates solutions is really helpful; it helped me
leaving my "comfort" zone and reminded me of different (better) stratetgies and concepts


=end