//
//  TCBtnSwitch.swift
//  yunguan
//
//  Created by LingKangli on 16/5/25.
//  Copyright © 2016年 同昌. All rights reserved.
//

import UIKit

enum TCSwitchState {
    case stateClick
    case stateNoClick
}

protocol TCBtnSwitchDelegate : NSObjectProtocol {
    func clickNormal(name:String)
    func clickSelected(name:String)
}

class TCBtnSwitch: UIButton {
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    var _image : UIImage!
    var _highImage : UIImage!
    var _name : String!
    var _state : TCSwitchState = .stateNoClick
    var delegate : TCBtnSwitchDelegate!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("this is frame init")
    }
    
    func setImage(image: UIImage?, highImage:UIImage?,name:String,forState state: TCSwitchState) {
        _image = image
        _highImage = highImage
        _name = name
        
        if state == .stateClick {
            super.setImage(_highImage, forState: .Normal)
        }else{
             super.setImage(_image, forState: .Normal)
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if _state == .stateClick {
            self.setImage(_image, forState: .Normal)
            _state = .stateNoClick
            self.delegate.clickNormal(_name)
        }else{
            self.setImage(_highImage, forState: .Normal)
            _state = .stateClick
            self.delegate.clickSelected(_name)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TCBtnSwitch{

    func setState(state:TCSwitchState) {
        self._state = state
        if state == .stateClick {
            self.setImage(_highImage, forState: .Normal)

        }else{
            self.setImage(_image, forState: .Normal)

        }
    }
}
