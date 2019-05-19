//
//  ViewController.swift
//  HelloWorld
//
//  Created by zhaohuixin on 2019/5/18.
//  Copyright © 2019 zhaohuixin. All rights reserved.
//

import UIKit // 引入按钮、输入框这样的原件，可以和UI互动

// 主要用来控制画面的，这一段代码叫viewDidLoad，在画面读入后跑这个代码
class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    // 使用者和按钮互动，按下n按钮就会执行这个函数里面的代码
    @IBAction func buttonPressed(_ sender: UIButton) {
        // 当点击按钮，更改label元件的文本
        myLabel.text = "Hello world!"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }


}

