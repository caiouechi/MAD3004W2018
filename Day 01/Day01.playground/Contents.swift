import UIKit;

var str = "Hello, playgroung";

print(str);
print("This is our String: \(str)")

//
print("1","2","3","4","5", terminator: " ");

//use separator for separating multiple prompts
print("1","2","3","4","5", separator: "..")

var n1 = 10;

print("Number 1: ", n1, "String : ", str);


var n2 = 20;
print("Number 2: ", n2);

var sum = n1 + n2;
print ("Sum is : ", sum);
print ("Sum is: ", sum);
print ("Sum = ", n1+n2);

let lala=10;
print(lala);

/*
n1 = "test";
print("n1: ", n1;)
*/

var a:Double = 10
print("a = ", a);

var greet:String = "Good morning"
print("Greetings :", greet);

var emoji = "👏🏼";
print(emoji);

let pi = 3.14
print("Pi = ", pi);

let myNum:Int?
myNum = 10;

if myNum != nil {
    print("myNum :", myNum!)}
else {print("mynum is nil")}

//optional values
let possibleNumber = "123"
let convertedNumber:Int?

convertedNumber = Int(possibleNumber)

if convertedNumber != nil {
    print("Converted Number", convertedNumber!)
}
else { print("Converted Number is nil")}

for i in 1...5{
    print ("i = ", i);
}

let languages:[String];
languages = ["English", "Spanish", "French", ""];

for i in languages{
    print("language : ", i);
}

var Interval:Double = 2.30
for i in stride(from: 0, to: 50, by: Interval){print(i, " ", terminator: " ")}

var answer: Int = 1;

for _ in 1...5{ answer += 5;};
print("answer : ", answer);
    

var jaja = 1;

while (jaja < 5){
    print("Value of jaja is \(jaja)");
    jaja = jaja + 1;
}


var j = 5;
repeat {
    print ("Repeat : ", j);
    j = j + 2;
} while (j <= 10);

var variable = 5;
var sumAmmoumt = 1;

if(variable > 10){
//Display the fator
    var counter = 1;
    while (variable > 0){
        sumAmmoumt = sumAmmoumt * variable;
        variable = variable - 1;
    }
    print("Value of jaja is \(sumAmmoumt)")
}else {
    var factorialFive = 5*4*3*2*1;
    print("The factorial of 5 is ", factorialFive);
}
    


var num1 = 10
switch num1 {
case 100:
    print ("Value of num1 is 100");
case 10,15:
    print ("Value of num1 is either 10 or 15");
case 5: print("Value of num1 is 5");
default: print( "default cause");
}












