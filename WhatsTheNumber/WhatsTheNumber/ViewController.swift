//
//  ViewController.swift
//  WhatsTheNumber
//
//  Created by zhaohuixin on 2019/5/19.
//  Copyright © 2019 zhaohuixin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // create an init random result
    // 生成 1~100 的随机数
    var answer = Int.random(in: 1...100)
    // 定义猜数的上下限
    var maxNumber = 100
    var minNumber = 1
    // isOver 记录游戏是否结束，
    var isOver = false
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func makeAGuess(_ sender: UIButton) {

        if isOver == false{
            // playing game
            print(answer)
            // 获得用户输入的数字，加！是向程序保证文字输入框中一定有文字
            // 文字输入框拿到的类型是字符串
            let inputText = inputTextField.text!
            // 拿到输入框内文本后将输入框清空，更好的用户体验
            inputTextField.text = ""
            print("input Text is \(inputText)")
            // 将输入的String类型数字转为Int类型,
            // 如果被转换的字符串不是数字将得到nil，所以inputNumber的类型是optional的
            let inputNumber = Int(inputText)
            
            if inputNumber == nil{
                // no input
                messageLabel.text = "No input! Guess a number between \(minNumber)~\(maxNumber)"
            } else{
                // got intput !是确认inputNumber有值，由optional类型变为Int类型
                if inputNumber! > 100{
                    // user input too large
                    messageLabel.text = "Too large! Guess a number between \(minNumber)~\(maxNumber)"
                }else if inputNumber! < 1{
                    // user input too small
                    messageLabel.text = "Too small! Guess a number between \(minNumber)~\(maxNumber)"
                }else{
                    // check answer !是确认inputNumber有值，由optional类型变为Int类型
                    if inputNumber! == answer{
                        // bingo! right answer
                        messageLabel.text = "You are right! Press [Guess] to play again."
                        isOver = true
                    }else{
                        // wrong answer
                        if inputNumber! > answer{
                            // larger than answer
                            maxNumber = inputNumber!
                        }else{
                            // smaller than answer
                            minNumber = inputNumber!
                        }
                        messageLabel.text = "Try again, Guess a number between \(minNumber)~\(maxNumber)"
                    }
                }
            }
        }else{
            // game is over, reset a random number, and init variables
            maxNumber = 100
            minNumber = 1
            messageLabel.text = "Guess a number between \(minNumber)~\(maxNumber)"
            isOver = false
            answer = Int.random(in: 1...100)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 程序执行后画面读入，inputor变为焦点，键盘就会跳出， push the keyboard up
        inputTextField.becomeFirstResponder()
        
    }


}

