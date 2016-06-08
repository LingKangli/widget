//
//  TCUtill.swift
//  yunguan
//
//  Created by LingKangli on 16/5/20.
//  Copyright © 2016年 同昌. All rights reserved.
//

import UIKit


let SCREENWIDTH = CGRectGetWidth(UIScreen.mainScreen().bounds)
let SCREENHEIGHT = CGRectGetHeight(UIScreen.mainScreen().bounds)

let TCIS_IPHONE4 = ((SCREENWIDTH == 320 && SCREENHEIGHT == 480) || (SCREENWIDTH == 480 && SCREENHEIGHT == 320) ? true :false) //iphone4 or iphone4s
let TCIS_IPHONE5 = ((SCREENWIDTH == 320 && SCREENHEIGHT == 568)  || (SCREENWIDTH == 568 && SCREENHEIGHT == 320) ? true :false)//iphone5 or iphone5s
let TCIS_IPHONE6 = ((SCREENWIDTH == 375.0 && SCREENHEIGHT == 667) || (SCREENWIDTH == 667 && SCREENHEIGHT == 375.0) ? true :false)//iphone6 or iphone6s
let TCIS_IPHONE6Plus = ((SCREENWIDTH == 414.0 && SCREENHEIGHT == 736.0 ) || (SCREENWIDTH == 736.0 && SCREENHEIGHT == 414.0) ? true :false)//iphone6 plus or iphone6s plus

//let TC_IPHONE4S = "iphone4s"
let TC_IPHONE4 = "iphone4"  //iphone4 与 iphone4s屏幕大小相同
let TC_IPHONE5 = "iphone5"  //iphone5 与 iphone5s屏幕大小相同
let TC_IPHONE6 = "iphone6"  //iphone6 与 iphone6s屏幕大小相同
let TC_IPHONE6Plus = "iphone6plus" //iphone6 plus 与 iphone6s plus是屏幕大小相同




//let DEVICE_IPHONE7 = "iphone4"
//let DEVICE_IPHONE4 = "iphone4"

//颜色设置
struct Rgb{
    var r:CGFloat
    var g:CGFloat
    var b:CGFloat
    
    init(rf:CGFloat,gf:CGFloat,bf:CGFloat){
        r = rf
        g = gf
        b = bf
    }
}

class TCUtill {

    class var sharedInstance: TCUtill {
        struct Singleton {
            static let instance = TCUtill()
        }
        return Singleton.instance
    }

    func hexColor(hex:String) -> UIColor {
        
        var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
        
        if (cString.hasPrefix("#")) {
            cString = (cString as NSString).substringFromIndex(1)
        }
        
        let rString = (cString as NSString).substringToIndex(2)
        let gString = ((cString as NSString).substringFromIndex(2) as NSString).substringToIndex(2)
        let bString = ((cString as NSString).substringFromIndex(4) as NSString).substringToIndex(2)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        NSScanner(string: rString).scanHexInt(&r)
        NSScanner(string: gString).scanHexInt(&g)
        NSScanner(string: bString).scanHexInt(&b)
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    }
    
    func rgbColor(rgbValue:Rgb) -> UIColor {
        return UIColor(red: rgbValue.r/255.0, green: rgbValue.g/255.0, blue: rgbValue.b/255.0, alpha: 1)
    }
    
    func getVesionNum() -> String {
        return (NSBundle.mainBundle().infoDictionary!["CFBundleVersion"] as! String)
    }
    
//    func getTCIphoneName() -> String {
//
//        
//        
//        if (SCREENWIDTH == 320 && SCREENHEIGHT == 480) || (SCREENWIDTH == 480 && SCREENHEIGHT == 320){//iphone4 or iphone4s
//            return TC_IPHONE4
//        }else if(SCREENWIDTH == 320 && SCREENHEIGHT == 568)  || (SCREENWIDTH == 568 && SCREENHEIGHT == 320){//iphone5 or iphone5s
//            return TC_IPHONE5
//        }else if (SCREENWIDTH == 375.0 && SCREENHEIGHT == 667) || (SCREENWIDTH == 667 && SCREENHEIGHT == 375.0){//iphone6 or iphone6s
//            return TC_IPHONE6
//        }else if (SCREENWIDTH == 414.0 && SCREENHEIGHT == 736.0 ) || (SCREENWIDTH == 736.0 && SCREENHEIGHT == 414.0){//iphone6 plus or iphone6s plus
//            return TC_IPHONE6Plus
//        }else{
//            return TC_IPHONE6
//        }
//    }
}

//得到版本号


/*
extension UIColor {

    func hexColor(hex:String) -> UIColor {

        var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
        
        if (cString.hasPrefix("#")) {
            cString = (cString as NSString).substringFromIndex(1)
        }
        
        let rString = (cString as NSString).substringToIndex(2)
        let gString = ((cString as NSString).substringFromIndex(2) as NSString).substringToIndex(2)
        let bString = ((cString as NSString).substringFromIndex(4) as NSString).substringToIndex(2)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        NSScanner(string: rString).scanHexInt(&r)
        NSScanner(string: gString).scanHexInt(&g)
        NSScanner(string: bString).scanHexInt(&b)
        
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    }
}*/