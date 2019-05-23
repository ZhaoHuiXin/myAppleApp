var index=1
while index<=10{
    print(index)
    index += 1
}

var animalArray = ["cat", "dog", "lion", "tiger"]
index = 0
while index < animalArray.count{
    print(animalArray[index])
    index += 1
}


// repeat-while
// 与while不同的是，repeat至少执行一次，即使条件不符
var myCounter = 1
repeat {
    print("just do it \(myCounter) times(s)")
    myCounter += 1
}while myCounter<0
