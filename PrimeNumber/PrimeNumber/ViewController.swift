//
//  ViewController.swift
//  PrimeNumber
//
//  Created by zhaohuixin on 2019/5/28.
//  Copyright © 2019 zhaohuixin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBAction func checkButton(_ sender: UIButton) {
        let input:String = inputTextField.text ?? "0"
        let inputNumber:Int = Int(input) ?? 0
        let result = CheckPrime(withInput: inputNumber)
        contentLabel.isHidden = false
        contentLabel.text = result
        print(result)
        inputTextField.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inputTextField.becomeFirstResponder()
    }
    
    func CheckPrime(withInput inputNumber: Int) -> String{
        var isPrime: Bool? = true
        if inputNumber <= 0{
            isPrime = nil
        }else if inputNumber == 1{
            isPrime = false
        }else{
            for i in 2..<inputNumber{
                if inputNumber % i == 0{
                    isPrime = false
                    break
                }
            }
        }
        switch isPrime {
        case nil:
            return "Please input the number greater than 0"
        case true:
            return "\(inputNumber) is a Prime Number"
        default:
            return "\(inputNumber) is not a Prime Number"
        }
    }

}

