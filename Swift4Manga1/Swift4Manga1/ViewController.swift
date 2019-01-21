//
//  ViewController.swift
//  Swift4Manga1
//
//  Created by yu on 2019/01/15.
//  Copyright © 2019年 yu.takubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countLabel: UILabel!
    
    @IBOutlet var runnerImageView: UIImageView!
    
    var imageArray = [UIImage]()
    var timer1 = Timer()
    var timer2 = Timer()
    var updateCount = 0
    
    //経過時間
    var countUp = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image0 = UIImage(named: "dash0.png")
        let image1 = UIImage(named: "dash1.png")
        let image2 = UIImage(named: "dash2.png")
        let image3 = UIImage(named: "dash3.png")
        let image4 = UIImage(named: "dash4.png")
        let image5 = UIImage(named: "dash5.png")
        
        imageArray = [image0!,image1!,image2!,image3!,image4!,image5!]
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func run(_ sender: Any) {
        //タイマースタート
        //runnerImageViewに画像を1秒ごとに表示
        timer1 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            //カウントアップ
            self.countUp = self.countUp + 1
            //ラベルに反映
            self.countLabel.text = String(self.countUp)
        })
        
        timer2 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            //配列から画像を取り出してUIImageVIewに反映
            if(self.updateCount > 5){
                self.runnerImageView.image = UIImage(named: "dash0.png")
            }else{
                self.runnerImageView.image = self.imageArray[self.updateCount]
            }
            self.updateCount = self.updateCount + 1
        })
    }
    
    @IBAction func stop(_ sender: Any) {
        
        timer1.invalidate()
        timer2.invalidate()
    }
}

