//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var a = [10,20,30,40,50];
print("a[0]: \(a[0])");

print("a: ", a)

let j1 = [10,20]
print("x : ", j1)

//Use methods to add values
var b = [Int]();
print("Size of array b: \(b.count)")

b.append(100)
print("b[0]: \(b[0])")

//index out of range
//b[2] = 1000
//print("b[0]: \(b[2])")

b.append(1000)
print("b: ", b)

//assigning the default value
var num1 = [Int](repeating:1, count: 3)
print("num1 array: \(num1)")

var num2 = [Int](repeating: 5, count:3)
print("num2 array: \(num2)")

//copying the arrays
var numMerge = num1 + num2;
print("numMerge array: \(numMerge)");

num1[0] = 99;

print("num1 array: \(num1)")
print("numMerge array: \(numMerge)");

var c = [Any]();
    print("Size of array c : \(c.count)");
c.append(100)
c.append("Patel")
c.append(100.23)
print("C array : \(c)")

var x = a[1...3]
for t in x{
    print("x : \(t)")
}

//String array and for-ech with (KEY, VALUE)
var shoppingList: [String] = ["Eggs", "Milk"]
for (index, value) in shoppingList.enumerated(){
    print("Item \(index): \(value)")
}

print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty{
    print("The shopping list is empty.")}
else{
    print("The shopping list is not empty.")
}

shoppingList.append("Flour")

print("shoppingList array: \(shoppingList)")

//does not work tryiing to insert multiple values
//shoppingList.append("test1", "test2")

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var List1 = ["Chocolate Spread", "Cheese", "Butter"]
print("shoppingList array: \(shoppingList)")

shoppingList.insert("Maple syrup", at:0)

//how to insert a list
shoppingList.insert(contentsOf: List1, at:0)
//shoppingList.insert(List1, at:0)
//let mapleSyrup = shoppingList.remove(at:2);
//let apples = shoppingList.removeLast();
//print("shoppingList array: \(shoppingList)");



//SET - unordered list of multiple values

var grades: Set<Character> = []

grades.insert("A")
grades.insert("B")
print("grades : \(grades)")

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip Hop"]
print("favoriteGenres: \(favoriteGenres)");

//requires hastable datatype
//var gradeType: set <Any> = []

print("I have \(favoriteGenres.count) favorite music genres.")
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
}else{
    print("I have particular music preferences.")
}

favoriteGenres.insert("Jazz")
print("favoriteGenres : \(favoriteGenres)")

if let removedGenre = favoriteGenres.remove("Rock"){
    print("\(removedGenre)? I'm over it.")}
else {
    print("I never much cared for that.")
}

print("favoriteGenres : \(favoriteGenres)");

for genre in favoriteGenres.sorted(){
    print("\(genre)")
}

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]

//Union a + b
print(oddDigits.union(evenDigits).sorted())

//a equals b
print(oddDigits.intersection(evenDigits).sorted())

//a - b
print(oddDigits.subtracting(singledigitPrimeNumbers).soretd())

//a and b differences
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

/*
print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))
*/

