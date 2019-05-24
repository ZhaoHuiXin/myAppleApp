// Array 的 map方法 配合Closure练习
var numberArray = [1,3,5,7,9,2,4,6,8,10]

numberArray.count
numberArray.append(27)

// map方法的参数是Closure,map可以把array的每个成员都拿出来做一些事
let numberArrayAddTen = numberArray.map({
    (number:Int) in
    // return 回形成一个新的Array
    return number + 10
})
print(numberArrayAddTen)



//let numberArray2String = numberArray.map({
//    (a:Int) -> String in
//    return "This is Number \(a)"
//})
// 简化写法 1~3 规则
//let numberArray2String = numberArray.map({"This is \($0)"})
// 简化规则4
//let numberArray2String = numberArray.map(){"This is number \($0)"}
// 简化规则5
let numberArray2String = numberArray.map{"This is number \($0)"}
print(numberArray2String)


// 练习省略 numberArrayAddTen中的Closure
let numberArrayAdd10 = numberArray.map{$0+10}
print(numberArrayAdd10)


// Array 的 filter 方法配合 Closure 练习, filter会用Colsure过滤Array内的元素
let evenNumbers = numberArray.filter({
    (number:Int) -> Bool in
    return number % 2 == 0
})
print(evenNumbers)

let evens = numberArray.filter{$0 % 2==0}
print(evens)




