// variable
var x = 2
print(x + 3)

var y = 100

// const
let age = 18
age + 1
// re assignment again, error
// let age = 35

// Int
var myNumber:Int = 10
var myNumber64:Int64 = 20
myNumber += 10
myNumber

// Float Double(存的小数位数更多)
let gravityNumber:Float = 9.8
var mathNumber:Double = 3.1415
// 类型转化
Float(mathNumber)
Float(mathNumber) * gravityNumber

//
let numberDoesntChange:Int = 5
// 程序判断整数除整数，结果也是整数
numberDoesntChange / 2
// 程序判断整数除整数，结果也是整数
Double(numberDoesntChange) / 2

// String  Bool
var isTheLightOn:Bool = true
isTheLightOn = false
isTheLightOn

let threeImportantWord:String = "I love You"
let language:String = "Swift"
let isCool:Bool = true
var version:Float = 4.2


let name = "hui xin"
threeImportantWord + " " + name

// Format string
var theFact = "My name is \(name)"


let number:String = "40"
// 特殊符号转义 /
var theDialog = "My mom said,\"Life was like a box of chocolates\"."
// 大小写转化,不是原地的
theDialog.lowercased()
theDialog.uppercased()
// 多行字符串
let multiLineString = """
start where you are
use what you have
do what you like
and like what you do
"""
print(multiLineString)

print("My favorite programming language is \(language)")
print("Now the \(language) version is \(version)")
