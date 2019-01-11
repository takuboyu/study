//
//  ViewController.swift
//  Keisan
//
//  Created by yu on 2019/01/09.
//  Copyright © 2019年 yu.takubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var minus = 0
    var kakezan = 0
    var warizan = 0
    
    var firstName = "yu"
    var lastName = "takubo "
    var result = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //足し算
        count = 10
        count = 11
        count = count + 1
        
        //引き算
        minus = 10
        minus = minus - 5
        
        //掛け算
        kakezan = 10
        kakezan = kakezan * 10
        
        //割り算
        warizan = 10
        warizan = warizan / 2
        
        //文字列結合
        result = lastName + firstName
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

