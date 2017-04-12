//
//  WBDemoViewController.swift
//  Weiboemo
//
//  Created by YanJian on 2017/4/11.
//  Copyright © 2017年 ZHILIFANF. All rights reserved.
//

import UIKit

class WBDemoViewController: WBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(navigationController?.childViewControllers.count ?? 0 )"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @objc func pushNext(){
        let vc = WBDemoViewController()
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}


extension WBDemoViewController{
    override func setupUI() {
        super.setupUI()
        
        navItem.rightBarButtonItem = UIBarButtonItem(title: "下一页", tagter: self, action: #selector(pushNext))
        
    }
}
