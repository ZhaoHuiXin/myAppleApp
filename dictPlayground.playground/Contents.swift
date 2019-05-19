// Dict
// const dict declared use "let", other use "var"

// create a dict, use []
var fruitDict = ["red": "apple", "yellow":"banana", "green":"mango"]
print(fruitDict)

// change key's value
fruitDict["red"] = "tomato"
// another method
fruitDict.updateValue("kiwi", forKey: "green")
print(fruitDict)
// if update key not exists, will create a new pair of key-value
fruitDict.updateValue("cherry", forKey: "redi")
print(fruitDict)

// add new key-value to dict
fruitDict["orange"] = "orange"
print(fruitDict)
// another method  updateValue
fruitDict.updateValue("black-berry", forKey: "blue")
print(fruitDict)
// calc the dict length
print(fruitDict.count)

// del key-value
fruitDict["red"] = nil
print(fruitDict)
// another method  removeValue
fruitDict.removeValue(forKey: "yellow")
print(fruitDict)

// 使用 option键 配合鼠标，可以显示一个变量的类型
//practice
var score = ["English": 90, "Chinese": 95, "Sport":80]
print(score["English"])
score["Chinese"] = 65
print(score)
let englishScore = score["English"]! // !确定一定有，很自信哟
print(englishScore)

// get all keys/ values
print(score.keys)
print(score.values)
// get sorted all keys/values
print(score.keys.sorted())
print(score.values.sorted())

// create an empty dict
// can't use type Any as key, but can be value type
var emptyDict:[String:Any] = [:]
print(emptyDict)
// judgement an dict is empty or not
print(emptyDict.isEmpty)

// traverse an dict
for kvTuple in score{
    print(kvTuple)
    // tuple use . get index
    print(kvTuple.0, kvTuple.1)
    // or use . get value name
    print(kvTuple.key, kvTuple.value)
}

// get value methods
// 从Dict 中拿到的值是Optional，  当一个值有可能没有的时候是Optional, 比如 Int?
print(fruitDict["red"] as Any)
print(fruitDict["red"]!)
// not error when key not exists, return nil instead
print(fruitDict["black"])
// use default value for not exists key
print(fruitDict["black"] ?? "pig")
