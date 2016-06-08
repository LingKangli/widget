//
//  ViewController.swift
//  ImageSizeCount
//
//  Created by LingKangli on 16/6/8.
//  Copyright © 2016年 凌康丽. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var width: UITextField!
    @IBOutlet weak var heigh: UITextField!
    @IBOutlet weak var iphone4: TCBtnSwitch!
    @IBOutlet weak var iphone5: TCBtnSwitch!
    @IBOutlet weak var iphone6: TCBtnSwitch!
    @IBOutlet weak var countBtn: UIButton!
    @IBOutlet weak var widthImag: UILabel!
    @IBOutlet weak var heightImage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        this function will be used.
//        switch begin
        iphone4.delegate = self
        iphone5.delegate = self
        iphone6.delegate = self
//        end
        
        countBtn.addTarget(self, action: #selector(countAction), forControlEvents: .TouchUpInside)
    }

    func countAction() {
        print("计算结果")
        
        widthImag.text = width.text
        heightImage.text = heigh.text
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController:TCBtnSwitchDelegate{

    func clickNormal(name: String) {
        switch name {
        case "4":
            break
        case "5":
            break
        case "6":
            break
        default:
            break
        }
    }
    func clickSelected(name: String) {
        
    }
}
