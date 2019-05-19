// Array
var animalArray:Array = ["cat", "dog", "lion", "tiger"]

// index start from 0
print(animalArray[0])

// count
print(animalArray.count)

// append
animalArray.append("rabbit")
print(animalArray)

// insert  (item, at:index)
animalArray.insert("mouse", at:0)
print(animalArray)
animalArray.insert("hourse", at:2)
print(animalArray)

// remove(at:index)
animalArray.remove(at:0)
print(animalArray)
// removeFirst(), removeLast()
animalArray.removeFirst()
animalArray.removeLast()
print(animalArray)
// attention: Array中元素类型要相同
// animalArray.append(1) // wrong

// reverse(), it's an in place method
animalArray.reverse()
print(animalArray)


var anotherAnimalArray = ["pony", "sheep", "monkey"]
// bond two Arrays
animalArray = animalArray + anotherAnimalArray
print(animalArray)
print(type(of: animalArray))

// replace item
animalArray[1] = "bird"
print(animalArray)

// array cut out@self search, attention it include the last item
var subAnimalArray = animalArray[0...3]
print(animalArray)
print(subAnimalArray)

// distinct let and var
var numbers:[Int] = [1,3,5,7,9]
// if use let declaration，cant't use append
numbers.append(11)
print(numbers)
// 如果知道里面要存的值今后都不会变化，那么尽量使用let声明

// create an empty array, must declare the Array Type
var emptyBag:[Int] = []
// another method to create an empty
var emptyBag_2 = [Int]()
var emptyStringBag = [String]()
