// if
// if {} else {}
/*
 if s1{
    code
 }
 
 if s1{
    code
 } else {
    code
 }
 
 if s1{
    code
 } else if s2{
    code
 } else {
    code
 }
 
 */

var price:Int = 30

if price == 80{
    // What to do if the price is equal to 80
    print("buy it")
}
if price > 150{
    print("Are you crazy?")
}else if price<50{
    print("very cheap")
}else{
    print("buy it")
}

var name = "Thomas"
let time = 7
// && and , || or
// if 是快速结束的， 一有符合条件的情况，就不会再执行下去做其他的判断了
if name != "Thomas" || time == 7{
    print("who are you?")
}else{
    print("hello, \(name)")
}

var isOk = true
!isOk
