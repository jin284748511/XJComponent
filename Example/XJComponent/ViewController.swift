//
//  ViewController.swift
//  XJComponent
//
//  Created by jin284748511 on 07/06/2018.
//  Copyright (c) 2018 jin284748511. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        runBridgingTest()
        
        var userDefault = UserDefaults.standard
        
        print("现在是在主app中---看看这个数据是\(userDefault)")
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func runBridgingTest() {
        // 桥接文件测试
        let xj_test = SwiftBridgingOCFile()
        xj_test.xj_test1()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

