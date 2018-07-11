//
//  TodayViewController.swift
//  XJTodayViewController
//
//  Created by 金仕林 on 2018/7/11.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let xj_button1 = UIButton(frame: CGRect(x: 0, y: 60, width: 60, height: 30))
        xj_button1.setTitle("Hi:小小金", for: .normal)
        xj_button1.addTarget(self, action: #selector(clickXJButton1), for: .touchUpInside)
        xj_button1.backgroundColor = .red
        view.addSubview(xj_button1)
        
        let xj_button2 = UIButton(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 60));
        xj_button2.setTitle("这里可以放点好玩的", for: .normal);
        xj_button2.backgroundColor = .blue
        view.addSubview(xj_button2)
        // Do any additional setup after loading the view from its nib.
    }
    
    @objc func clickXJButton1() {
        self.extensionContext?.open(URL(string: "http://www.baidu.com")!, completionHandler: { (isOk) in
            print("成功的执行了想要的结果")
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
