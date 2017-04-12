//
//  WBHomeViewController.swift
//  Weiboemo
//
//  Created by YanJian on 2017/4/11.
//  Copyright © 2017年 ZHILIFANF. All rights reserved.
//

import UIKit

class WBHomeViewController: WBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showFriend() {
        print(#function)
        let vc = WBDemoViewController()
        
        navigationController?.pushViewController(vc, animated: true)
        
    }

}


extension WBHomeViewController{
    override func setupUI() {
        super.setupUI()
        
        navItem.leftBarButtonItem = UIBarButtonItem(title: "好友", tagter: self, action: #selector(showFriend))
        
    }
}
