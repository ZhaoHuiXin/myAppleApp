let name = "lucy"
// same as golang
switch name {
case "lucy":
    print("hello lucy")
case "Max","lili":
    print("hello lord")
default:
    print("who are you?")
}


// ... make a range
let price = 90
switch price {
case 200,300,400:
    print("expense")
case 100...180:
    print("ok")
case 50:
    print("cheap")
default:
    print("no price")
}
