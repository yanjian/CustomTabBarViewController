//
//  WBNavigationController.swift
//  Weiboemo
//
//  Created by YanJian on 2017/4/11.
//  Copyright © 2017年 ZHILIFANF. All rights reserved.
//

import UIKit

class WBNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isHidden = true
        
        
        
    }

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true ;
            
            if let vc = viewController as? WBBaseViewController {
                var title = "返回"
                if childViewControllers.count == 1 {
                    title = childViewControllers.first?.title ?? "返回"
                }
                vc.navItem.leftBarButtonItem = UIBarButtonItem(title: title, tagter: self, action: #selector(popToParentVC))
            }
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    @objc func popToParentVC(){
        popViewController(animated: true)
    }
    
}
