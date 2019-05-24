let helloClosure:()->() = {
    print("Hello Everybody")
}

helloClosure()

let eatClosure = {
    (foodName:String) in
    print("I want to have \(foodName)")
}

eatClosure("apple pie")

let addClosure = {
    (number1:Int, number2:Int) -> Int in
    let result = number1 + number2
    return result
}

addClosure(3,5)

// Closure的入参和出参类型
let multiplyClosure:(Int, Int)->String = {
    (number1:Int, number2:Int) -> String in
    return "\(number1) * \(number2) = \(number1 * number2)"
}

multiplyClosure(5,7)


// 重点：Closure是一个值，可以在呼叫函数的时候当成参数使用
func calculate(num1:Int, num2:Int, operation:(Int, Int)->Int){
    print(operation(num1, num2))
}
calculate(num1: 1, num2: 2, operation: addClosure)

// use unamed func is OK
calculate(num1: 100, num2: 50, operation:{
    (number1:Int, number2:Int) -> Int in
    return number1 - number2
})


// return func multiplyClosure
func giveMeMultipy() ->(Int, Int) -> String{
    return multiplyClosure
}
// return func multiplyClosure
let doMultiply = giveMeMultipy()
doMultiply(3,15)



// 简化后的Closure
let subClosure:(Int, Int) -> Int={$0 - $1}
subClosure(3,1)

/* 简写Closure
1.已经能够去人参数h与回传值类型的话，可以删除Closure里面参数跟回传值的类型
2.代码只有1行的情况下，可以删除return
3.可以用$0、$1、$2...等。代替传进来的参数名称,就可以将形参的名字省掉了
4.如果是最后或唯一参数，可以把Closure移后至参数小括号外
5.如果是唯一参数，可以省略参数小括号
*/

/*用作对比
let addClosure = {
    (number1:Int, number2:Int) -> Int in
    let result = number1 + number2
    return result
}
 */

// 简写
//let subClosure:(Int, Int) -> Int={
//    (number1, number2) in
//    return number1 + number2  // 第1步简化
    ///////////////////
//    (number1, number2) in number1 + number2  // 第2步简化
    ///////////////////
//    $0 + $1  // 第三步简化
//}
