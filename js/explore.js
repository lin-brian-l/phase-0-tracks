// Pseudocode Reverse Function:
// - Declare a function which accepts a string
// - Declare an empty string
// - Create for loop which counts down
// - Push the characters in the string into the empty string according to the index from the count
// - Return the string

var reverse = function(string) {
	result = ""
	for (var i = string.length-1; i > -1; i--) {
		result = result + string[i]
	}
	return result
}

console.log(reverse("hello"))

var test = reverse("reversal")
if (2 > 1){
	console.log(test)
}