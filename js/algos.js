// ************************Release 0************************
// Pseudocode
// 1. Set a variable equal to the first item in an array
// 2. Compare the lenghts of the variable and the item in the array
// 3. Switch the item which the variable represents if the item in the array has a longer length.

var longest_item = function(array) {
	result = array[0];
	for (i in array){
		if (result.length < array[i].length){
			result = array[i];
		} 
	}
	return result;
}

// var test = ["long phrase","longest phrase","longer phrase"];

// console.log(longest_item(test));

// var test1 = ["asdf", "asdfjkl;", "qweruiopjlsadkf", "asdf"];

// console.log(longest_item(test1));

// ************************Release 1************************
// Pseudocode
// 1. Compare the lengths of the two objects and store them in variables
// 2. Create a loop which goes through the keys of the longer object 
// 3. Nest a loop which goes through the keys of the shorter object 
// 4. Test to see if the keys of the object are the same and if the values of the object are the same 

var same_entry = function(object1, object2) {
	var result = false
	for (i = 0; i < Object.keys(object1).length; i++) {
		if (object1[Object.keys(object1)[i]] === object2[Object.keys(object1)[i]]) {
			result = true
		}
	}
	return result
}

// var r1test1 = {age: 54, name: "Steven"};
// var r1test2 = {start: "doh",  blah: 54, name: "Steven"};
// var r1test3 = {asdf: 12, lkj: 125, qwer: 1263, poiqwje: "basdf"};
// var r1test4 = {poiqwje: "basdf", legs: 4};
// var r1test5 = {animal: "Dog", legs: 3};
// // console.log(same_entry(r1test3, r1test4));
// console.log(same_entry(r1test4, r1test3));
// console.log(same_entry(r1test1, r1test2));

// ************************Release 2************************
// Pseudocode
// 1. Randomly determine the length of a word
// 2. Use a loop to randomly determine the content of the word
// 3. Add the word into an array
// 4. Loop depending on the input of the user.

var random_words = function(number) {
	var alpha = "abcdefghijklmnopqrstuvwxyz";
	var result = [];
	for (i = 0; i < number; i++) {
		var word_length = Math.floor(Math.random()*10 + 1)
		var word = ""
		for (char = 0; char < word_length; char++) {
			word += alpha[Math.floor(Math.random()*26)]
		}
		result.push(word)
	}
	return result
}

for (var count = 0; count < 10; count++) {
	var array = random_words(5)
	console.log(array)
	var word = longest_item(array)
	console.log(word)
}