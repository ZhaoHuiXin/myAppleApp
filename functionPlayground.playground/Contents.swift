// 没有参数的函数
/*
 func functionName(){
    // the code you want to run
 }
 */
// DRY  don't repeat yourself



// defined a function
func makeCake(){
    print("cream the egg and sugar")
    print("add butter to it")
    print("add flour to it and mix")
    print("bake it with oven")

}

// run a function
makeCake()


func sayHello(){
    print("hello everybody")
}

sayHello()

func sayHi(){
    print("hi what's up?")
}

sayHi()


// 有参数的函数
func eat(foodName:String){
    print("i want to have \(foodName)")
}
eat(foodName: "banana")
eat(foodName:"milk")

func drink(a1:String,a2:String) -> (){
    print("\(a1) dan \(a2)")
}

drink(a1: "cola", a2: "red bullet")


// 有返回值的函数, ->
func add(n1:Int,n2:Int) -> Int{
    return n1 + n2
    // return result
}
let n3 = add(n1: 3, n2: 5)
print(n3)

func multiply(n1:Int, n2:Int) -> String{
    return "\(n1) x \(n2) = \(n1 * n2)"
}
let result = multiply(n1: 2, n2: 3)
print(result)
// 注意，没有返回值可以：1什么都不写，2 -> Void 3 -> ()


// 外部参数名与内部参数名
// withWidth 和 andHeight 是外部参数名，给外部呼叫时使用
// width 和 height 是内部参数名，给内部处理时使用
// 就相当于统一参数的两个不同别名
func calculateArea(withWidth width:Float,andHeight height:Float)-> Float{
    return width * height
}
calculateArea(withWidth: 20.5, andHeight: 30.5)

func buy(N1 n1:String, Money money:Int){
    print("i want buy thig \(n1) with \(money) dollars")
}
buy(N1: "mac", Money: 5)


// 省略第一个外部参数名
/* 为什么本来没有外部参数名也ok？
 如果定义时没写外部参数名，Xcode会自动加上一个和内部参数名一样的外部参数名
 当第一个外部参数名用_代替的话，调用函数时不用写第一个参数的参数名
 */
func buy(_ n1:String, Money money:Int){
    print("i want buy thig \(n1) with \(money) dollars")
}
buy("mac", Money: 5)


// 变量的可视范围——作用域 scope
var perfect = 100
func plus(n1:Int,n2:Int) -> Int{
    // var perfect = 2000 这时是内部变量 不会被改动
    perfect += 100
    return n1 + n2 + perfect
    // return result
}
plus(n1: 1, n2: 2)
print(perfect)
// {}会创建新的命名空间
for index in 1...10{
    print(index)
}
// for 循环内的 index不被外部看见，只存在于循环里面
