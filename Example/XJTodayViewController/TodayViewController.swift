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
        
        let bgImageView = UIImageView(frame: self.view.bounds)
        bgImageView.image = UIImage(named: "xiaojin01")
        view.addSubview(bgImageView)
        
        
        let xj_button1 = UIButton(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 30))
        xj_button1.setTitle("小金暂时不想写什么:就跳转百度吧", for: .normal)
        xj_button1.addTarget(self, action: #selector(clickXJButton1), for: .touchUpInside)
        xj_button1.backgroundColor = .red
        view.addSubview(xj_button1)
        
        // Do any additional setup after loading the view from its nib.
    }
    
    @objc func clickXJButton1() {
        var userDefaults = UserDefaults.standard
        print("扩展程序中的这些数据是\(userDefaults)")
        
        self.extensionContext?.open(URL(string: "http://www.baidu.com")!, completionHandler: { (isOk) in
            print("成功的执行了想要的结果")
        })
    }
    
    /*
     *被调用以给小部件提供更新其内容的机会。
     调用此方法可为窗口小部件提供更新其内容并在快照等操作之前重绘其视图的机会。 当窗口小部件完成更新其内容（并在必要时重绘）时，窗口小部件应调用完成处理程序块，并传递相应的NCUpdateResult值。
     */
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        /*
         执行必要的任何设置以更新视图。
         如果遇到错误，请使用NCUpdateResult.Failed
         如果不需要更新，请使用NCUpdateResult.NoData
         如果有更新，请使用NCUpdateResult.NewData
         */
        
        completionHandler(NCUpdateResult.newData)
    }
    
    /*
     当活动显示模式改变时调用。
     如果窗口小部件应更改其preferredContentSize值以更好地适应新的显示模式，则可以实现此方法。
     */
    func widgetActiveDisplayModeDidChange(_ activeDisplayMode: NCWidgetDisplayMode, withMaximumSize maxSize: CGSize) {
        
    }
    
    /*
     *调用让小部件接受默认的边距插入值或返回要使用的自定义值。
     窗口小部件可以实现此方法以返回要使用的自定义边距插入值，而不是defaultMarginInsets中指定的默认值。 （如果窗口小部件不需要使用自定义值，则应在其实现中返回未更改的默认值。）如果窗口小部件未实现此方法，则它会自动接收默认的边距插入值。
     */
    func widgetMarginInsets(forProposedMarginInsets defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    
    
    
    
    
    
}
