//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str);

//Multiple lines
let strOne = """
This is first line
This is another line
This is one more line
Ok. Enough of lines
Tunak tunak com guarana
"""

print(strOne);

var mood = "";

//unicoDE SEQuence
let heart = "\u{1F496}";

if mood.isEmpty { print("cheer up")}
else {print(heart)}

mood += " cheerful joyful"
print(mood)

//heart += " be happy"

var lala:String = "test";

lala.append("ala")
print(lala);


var firstName = String()
firstName = "Jigisha"
print(firstName)

for i in firstName{
    print(i);
}

let initial : Character = "J"
firstName.append(initial)

print(firstName)

//Lenght of characters
 print("Firstname is \(firstName) which is \(firstName.count) characters long. ")

print("Start index: ", firstName[firstName.startIndex]);
//print("End index: ", firstName[firstName.endIndex])])
print("before end index:", firstName[firstName.index(before: firstName.endIndex)]);
print("after start Index:", firstName[firstName.index(after: firstName.startIndex)]);
print("after start Index:", firstName[firstName.index(after: firstName.startIndex)]);
print("5th character:", firstName[firstName.index(firstName.startIndex, offsetBy:4)]);
print("3rd from last character:", firstName[firstName.index(firstName.endIndex, offsetBy:-3)]);

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
/*
var i = r;
while (i <= randomString.count) {
    print(randomString[randomString.index(randomString.endIndex, offsetBy: i)]);
    i = i+1;
}*/

//6th character from beginning


var language = "Swift";
print("language : ", language)

language.insert("!", at: language.endIndex)
print ("language : ", language)

language.insert(contentsOf: " Java", at: language.endIndex)
    print ("language: ", language)

language.insert(contentsOf: " is nice than ", at: language.index(language.startIndex, offsetBy: 6))

print("language contentsOf: ", language);

language.remove(at: language.index(before: language.endIndex));
print("language remove: ", language)

let range = language.startIndex ..< language.endIndex
language.removeSubrange(range)
print("language removesubrange: ", language)

let greeting = "Happy Holidays!"
let index = greeting.index(of: " ") ?? greeting.endIndex
let start = greeting[..<index]
let newGreet = String(start)

print("substring: ", newGreet)

//Array declaration
var a = [10, 20, 30, 40, 50];
print("a[0] : \(a[0])")





