//
//  ViewController.swift
//  Swift5ImageView1
//
//  Created by yu on 2019/01/11.
//  Copyright © 2019年 yu.takubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func changeimage(_ sender: Any) {
        
        //ボタンを押した時のアクション
        count = count + 1
        
        if (count >= 10){
            imageView.image = UIImage(named:"background")
            
            if (count >= 20){
                imageView.image = UIImage(named:"beach")
            }
        }
    }
}

