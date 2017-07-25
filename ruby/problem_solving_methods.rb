=begin
Release 0 Pseudocode
1. Use each_index to look through each array term
2. Compare term to given number
3. Return index if they match
=end

def search_array(arr, x)
	arr.each_index { |i| return i if arr[i] == x }
	return nil
end
 
arr = [42, 89, 23, 1]

p search_array(arr, 1)
p search_array(arr, 100)
