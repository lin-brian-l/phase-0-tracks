// ************************Release 0************************
// var longest_item = function(array) {
// 	result = array[0];
// 	for (i in array){
// 		if (result.length < array[i].length){
// 			result = array[i];
// 		} 
// 	}
// 	return result;
// }

// var test = ["long phrase","longest phrase","longer phrase"];

// console.log(longest_item(test));

// var test1 = ["asdf", "asdfjkl;", "qweruiopjlsadkf", "asdf"];

// console.log(longest_item(test1));

// ************************Release 1************************
// var same_entry = function(object1, object2) {
// 	length1 = Object.keys(object1).length;
// 	length2 = Object.keys(object2).length;
// 	if (length1 > length2) {
// 		var limit_first = length1;
// 		var limit_second = length2;
// 		var first = object1;
// 		var second = object2;
// 	} else {
// 		var limit_first = length2;
// 		var limit_second = length1;
// 		var first = object2;
// 		var second = object1;
// 	}

// 	var result = false
// 	for (i1 = 0; i1 < limit_first; i1++) {
// 		for (i2 = 0; i2 < limit_second; i2++){
// 			var test_key = (Object.keys(first)[i1] === Object.keys(second)[i2])
// 			var test_value = (first[Object.keys(first)[i1]] === second[Object.keys(second)[i2]])
// 			if (test_key && test_value)  {
// 				result = true
// 			}
// 		}
// 	}
// 	return result
// }

// r1test1 = {age: 54, name: "Steven"};
// r1test2 = {start: "doh",  blah: 54, name: "b"};
// r1test3 = {asdf: 12, lkj: 125, qwer: 1263, poiqwje: "basdf"};
// r1test4 = {animal: "Dog", legs: 4};
// r1test5 = {animal: "Dog", legs: 3};
// console.log(same_entry(r1test3, r1test4));
// console.log(same_entry(r1test4, r1test5));
// console.log(same_entry(r1test1, r1test2));

// ************************Release 2************************

// console.log(1.toString(36))