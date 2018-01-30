//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//find de lenght of string, and then display individual character one by one, one time from first to last, and then reverse
var randomString = "JAPAPITO";
var auxiliaryString = "";

//Creating the reverse mode
for letter in randomString{
    print(letter);
    auxiliaryString.insert(letter, at: auxiliaryString.startIndex);
}

print("Auxiliary string: ", auxiliaryString);

for letter in auxiliaryString{
    print(letter);
}

//loop should manipulate using count
print("manipuation with count");
print("ASC order");

var i = 0;
while (i < randomString.count) {
    print(randomString[randomString.index(randomString.startIndex, offsetBy: i)]);
    i = i+1;
}

print("manipuation with count");
print("DESC order");
