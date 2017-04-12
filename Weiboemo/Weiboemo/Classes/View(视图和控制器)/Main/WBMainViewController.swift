//
//  WBMainViewController.swift
//  Weiboemo
//
//  Created by YanJian on 2017/4/11.
//  Copyright © 2017年 ZHILIFANF. All rights reserved.
//

import UIKit
@objc(WBMainViewController)
class WBMainViewController: UITabBarController {

    public lazy var composeButton:UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupChildController()
        setupComposeButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
   @objc func composeState(){
        print("compose")
    }
    
}

extension WBMainViewController{
    
    public func setupComposeButton(){
        composeButton.setImage(UIImage.init(named: "tabbar_compose_icon_add"), for: .normal)
        composeButton.setBackgroundImage(UIImage.init(named: "tabbar_compose_button"), for: .normal)
        composeButton.sizeToFit()
        
        tabBar.addSubview(composeButton)
        
        let w = tabBar.bounds.size.width/CGFloat( childViewControllers.count) - 1
        composeButton.frame = tabBar.bounds.insetBy(dx: 2*w, dy: 0)
        
        composeButton.addTarget(self, action: #selector(composeState), for: .touchUpInside)
    }
    
   public func setupChildController()  {
        let array = [
            ["clsName":"WBHomeViewController","title":"首页","imageName":"home"],
            ["clsName":"WBMessageViewController","title":"信息","imageName":"message_center"],
            ["clsName":"UIviewController"],
            ["clsName":"WBDiscoverViewController","title":"发现","imageName":"discover"],
            ["clsName":"WBProfileViewController","title":"我","imageName":"profile"],
        ]
        var vcArr = [UIViewController]()
        for dict in array {
            vcArr.append(controller(dict: dict))
        }
    
        viewControllers = vcArr
    }
    
   private func controller(dict:[String:String]) -> UIViewController{
        guard let clsName = dict["clsName"],
                  let title = dict["title"],
                  let imageName = dict["imageName"],
                  let cls =  NSClassFromString(Bundle.main.namespace+"."+clsName) as? UIViewController.Type
            else {
                return UIViewController()
        }
        let vc = cls.init()
        vc.title = title
        vc.tabBarItem.image = UIImage(named: "tabbar_"+imageName)
        vc.tabBarItem.selectedImage = UIImage(named: "tabbar_"+imageName+"_highlighted")?.withRenderingMode(.alwaysOriginal)
    
        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orange], for: .highlighted)
    
        let navVC = WBNavigationController(rootViewController: vc)
        
        return navVC
    }
    

    
}
