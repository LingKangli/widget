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
    
     var iphone4: TCBtnSwitch!
    @IBOutlet weak var resultLab: UILabel!
    
     var iphone5: TCBtnSwitch!
     var iphone6: TCBtnSwitch!
    
    @IBOutlet weak var countBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
       
        iphone4 = TCBtnSwitch(frame: CGRectMake(SCREENWIDTH-100,100,20,20))
        iphone5 = TCBtnSwitch(frame: CGRectMake(iphone4.frame.origin.x,CGRectGetMaxY(iphone4.frame),20,20))
        iphone6 = TCBtnSwitch(frame: CGRectMake(iphone4.frame.origin.x,CGRectGetMaxY(iphone5.frame),20,20))
        
        iphone4.setImage(UIImage(named:"radioClickedNo" ), highImage: UIImage(named:"radioClicked" ), name: "iphone4", forState: .stateNoClick)
        iphone5.setImage(UIImage(named:"radioClickedNo" ), highImage: UIImage(named:"radioClicked" ), name: "iphone5", forState: TCSwitchState.stateClick)
        iphone6.setImage(UIImage(named:"radioClickedNo" ), highImage: UIImage(named:"radioClicked" ), name: "iphone6", forState: .stateNoClick)
        
        iphone4.delegate = self
        iphone5.delegate = self
        iphone6.delegate = self
        
        self.view.addSubview(iphone4)
        self.view.addSubview(iphone5)
        self.view.addSubview(iphone6)
//        end
        
        countBtn.addTarget(self, action: #selector(countAction), forControlEvents: .TouchUpInside)
    }

    func countAction() {
        print("计算结果")
        resultLab.text = ""
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController:TCBtnSwitchDelegate{

    func clickNormal(name: String) {
        
        print("clik")
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
