// For
/*
 for xx in Array{
    code
 }
 */
var animalArray = ["cat", "dog", "lion", "tiger"]
for animal in animalArray{
    print(animal)
}
// 循环结束后 animal 并不遗留, 在python中，animal最后会赋值为tiger
// print(animal) error

let numberArray = [1,2,3,4,5,6,7,8,9,10]

// 定义一个空列表，存numberArray + 2 的值
//var anotherNumberArray:[Int] = []
var anotherNumberArray = [Int]()
for number in numberArray{
    anotherNumberArray.append(number + 2)
}
print(anotherNumberArray)

// practice
let nameArray = ["Madonna", "Michael Jackson", "Lady Gaga", "Bruno Mars"]
var lowerCaseNameArray = [String]()
for name in nameArray{
    print(name)
    lowerCaseNameArray.append(name.lowercased())
}
print(lowerCaseNameArray)

// closed range范围生成 全闭区间
var a = Array(1...100)
print(a)

// 半闭区间
var b = Array(1..<5)
print(b)

// for in ... 全闭区间
for index in 1...100{
    print(index)
}

// for in ..< 半闭区间
for index in 1..<100{
    print(index)
}

// % 取余
for index in 1...10 where index % 2 == 0{
    print(index)
}


// range dict
var fruitDict = ["red":"apple", "yellow":"banana", "green":"mango"]
for (k,v) in fruitDict{
    print(k + ":" + v)
}

// Tuple 元组
var colors = ("red", "yellow", "green", "gray", "blue")
print(colors)
// get the index 0 item
print(colors.0)
// Array 元素必须是同一类别， Tuple不必

// named Tuple
var fruitTuple = (red:"apple", yellow:"banana", green:"mango")
for item in fruitDict{
    print(item.key)
    print(item.value)
}


