//
//  ViewController.swift
//  Swift5Manga2
//
//  Created by 田久保雄 on 2019/01/21.
//  Copyright © 2019年 田久保雄. All rights reserved.
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
    
    //ボタンとしてのrun
    @IBOutlet var runButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //0秒表示
        countLabel.text = "0"
        
        //画像を変数に格納
        let image0 = UIImage(named: "dash0.png")
        let image1 = UIImage(named: "dash1.png")
        let image2 = UIImage(named: "dash2.png")
        let image3 = UIImage(named: "dash3.png")
        let image4 = UIImage(named: "dash4.png")
        let image5 = UIImage(named: "dash5.png")

        //本来UIImageViewなので配列じゃないけど
        //上でvar imageArrayで配列宣言しているの
        imageArray = [image0!,image1!,image2!,image3!,image4!,image5!]
    }

    @IBAction func run(_ sender: Any) {
        runButton.isEnabled = false
        //タイマーをスタート
        timer1 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            
            //カウントアップ
            self.countUp = self.countUp + 1
            
            //ラベルに反映
            self.countLabel.text = String(self.countUp)
            
        })
        //runnerImageViewに画像を1秒ごとに表示
        timer2 = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (timer) in
            
            //配列から画像を取り出して、UIImageViewに反映していく
            if(self.updateCount > 5){
                self.updateCount = 0
                self.runnerImageView.image = UIImage(named: "dash0.png")
            }else{
                self.runnerImageView.image = self.imageArray[self.updateCount]
            }
            
            self.updateCount = self.updateCount + 1
            
        })
    }
    
    @IBAction func stop(_ sender: Any) {
        runButton.isEnabled = true
        
        timer1.invalidate()
        timer2.invalidate()
    }
    
}

