# O(1) time
def get_first (arr)
	arr[0]
end

# O(1) time
def get_last (arr)
	arr[-1]
end

# O(n) time
# Loops add complexity - this is one loop
nums.each do |num|
	puts num
end

# O(n) time
# Still only two constants and one loop
nums.each do |num|
	puts num
	puts num + 1
end

# O(n^2) time
# Two nested loops
# To compare all pairs within an array, needs two loops
# This gives every possible ordered pair
nums.each do |num1|
	nums.each do |num2|
		puts [num1, num2]
	end
end

 # Binary search: finding a value within an array
 # O(log[base 2]n) time


# Write a function that takes as an input an array of numbers,
# and returns the greatest possible difference you can get
# from subtracting any two of those numbers

# O(n^2) time
# O(1) space (all variables are just integers)
def get_greatest_diff(arr)
	greatest_diff = 0
	arr.each do |n1|
		arr.each do |n2|
			diff = n1 - n2
			if diff > greatest_diff
				greatest_diff = diff
			end
		end
	end
	puts greatest_diff
end

# O(n^2) time
# O(n^2) space (taking O(n^2) time to go through O(n^2) diffs)
def get_greatest_diff(arr)
	diffs = []
	arr.each do |n1|
		arr.each do |n2|
			diff = n1 - n2
			diffs.append(diff)
		end
	end
	diffs.max
end

# O(nlog[base 2]n) time
# O(n) space
def get_greatest_diff(arr)
	sorted = arr.sort()
	puts sorted[-1] - sorted[0]
end

# O(n) time
# O(1) space
def get_greatest_diff(arr)
	max = arr[0]
	min = arr[0]
	arr.each do |n|
		if n > max
			max = n
		elsif n < min
			min = n
		end
	end
	max - min
end