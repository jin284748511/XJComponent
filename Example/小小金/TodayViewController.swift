//
//  TodayViewController.swift
//  小小金
//
//  Created by 金仕林 on 2018/7/11.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 400)
        
        let xj_button1 = UIButton(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 100))
        xj_button1.setTitle("小金准备写点什么", for: .normal)
        xj_button1.addTarget(self, action: #selector(clickXJButton1), for: .touchUpInside)
        xj_button1.backgroundColor = .blue
        view.addSubview(xj_button1)
        
        let xj_button2 = UIButton(frame: CGRect(x: 0, y: 100, width: UIScreen.main.bounds.size.width, height: 100))
        xj_button2.setTitle("但小金不知道写什么", for: .normal)
        xj_button2.backgroundColor = .red
        view.addSubview(xj_button2)
        
    }
    
    @objc func clickXJButton1() {
        var userDefaults = UserDefaults.standard
        print("小金扩展程序中的这些数据是\(userDefaults)")
    }
    
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
