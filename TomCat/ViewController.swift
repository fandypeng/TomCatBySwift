//
//  ViewController.swift
//  TomCat
//
//  Created by Fandy on 15/10/16.
//  Copyright © 2015年 Fandy. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var tomImg: UIImageView!
    @IBAction func headTap(sender: AnyObject) {
        doAnimate("knockout",imageCount:80)
    }
    
    @IBAction func drinkBtn(sender: AnyObject) {
        doAnimate("drink",imageCount:80)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func doAnimate(filename:String , imageCount:Int){
        
        //如果动画在执行，就直接return
        if tomImg.isAnimating(){
            return
        }
        
        //第一步，创建图片数组
        var imgArr = [UIImage]()
        
        for i in 1...imageCount{
            var num:String
            if i < 10 {
                num = "0\(String(i))"
            }else{
                num = String(i)
            }
            let imgName = "\(filename)_\(num).jpg"
            
            let path = NSBundle.mainBundle().pathForResource(imgName, ofType: "", inDirectory: "")
            
            let image = UIImage(contentsOfFile: path!)
            
            imgArr.append(image!)
            
            print("\(image)\(imgName)")
            
        }
        
        //第二步，使用动画让图片动起来
        tomImg.animationImages = imgArr
        
        tomImg.animationDuration = Double(imageCount)*0.1
        
        tomImg.animationRepeatCount = 1
        
        tomImg.startAnimating()
        
        //动画执行完，清空数组
        imgArr.removeAll()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

