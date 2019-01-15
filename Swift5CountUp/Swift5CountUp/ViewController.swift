//
//  ViewController.swift
//  Swift5CountUp
//
//  Created by yu on 2019/01/15.
//  Copyright © 2019年 yu.takubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func plus(_ sender: Any) {
        
        count = count + 1
        label.text = String(count)
    }
    
    
    @IBAction func minus(_ sender: Any) {
        
        count = count - 1
        label.text = String(count)
    }
}

