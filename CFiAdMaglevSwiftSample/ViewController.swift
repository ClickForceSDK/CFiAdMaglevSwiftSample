//
//  ViewController.swift
//  CFiAdMaglevSwiftSample
//
//  Created by CF-NB on 2019/8/7.
//  Copyright © 2019年 CF-NB. All rights reserved.
//

import UIKit
import iMFAD
class ViewController: UIViewController {
    
    var admaglev : MFAdMaglev?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
//        admaglev = MFAdMaglev.init();
        admaglev = MFAdMaglev.init(location: [MFAdMaglevLocation.AdMaglevTop, MFAdMaglevLocation.AdMaglevRIGHT])
        admaglev?.bannerId = "9800";
        admaglev?.delegate = self;
        admaglev?.debugInfo(true);
        admaglev?.requestAd();
    }
}

extension ViewController:MFAdMaglevDelegate{
    func onSuccessToMFAdMaglev() {
        print("onSuccessToMFAdMaglev");
        admaglev?.show();
    }
    
    func onFailToMFAdMaglev() {
        print("onFailToMFAdMaglev");
    }
    
    func onClickToMFAdMaglev() {
        print("onClickToMFAdMaglev");
    }
    
    func onCloseToMFAdMaglev() {
        print("onCloseToMFAdMaglev");
    }
}

