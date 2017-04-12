//
//  WBBaseViewController.swift
//  Weiboemo
//
//  Created by YanJian on 2017/4/11.
//  Copyright © 2017年 ZHILIFANF. All rights reserved.
//

import UIKit

class WBBaseViewController: UIViewController {
    
    public var homeTableview :UITableView?
    
    
    public lazy var navigationBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 64))
    
    public lazy var navItem = UINavigationItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        automaticallyAdjustsScrollViewInsets = false
        loadData()
    }
    
    override var title: String?{
        didSet{
            navItem.title = title 
        }
    }
    
    public func loadData(){
        
    }

}


extension WBBaseViewController{
    
    public func setupUI(){
        let red = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
        let green = CGFloat( arc4random_uniform(255))/CGFloat(255.0)
        let blue = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
        let colorRun = UIColor.init(red:red, green:green, blue:blue , alpha: 1)
        view.backgroundColor = colorRun
        
        view.addSubview(navigationBar)
        
        navigationBar.items = [navItem]
        
        navigationBar.barTintColor = UIColor.white
        
        setupTableViewUI()
    }
    
    public func setupTableViewUI() {
        homeTableview = UITableView(frame: view.bounds, style: .plain)
        
        view.insertSubview(homeTableview!, belowSubview: navigationBar)
        
        homeTableview?.delegate = self
        homeTableview?.dataSource = self
        
        homeTableview?.contentInset = UIEdgeInsets(top: navigationBar.bounds.height, left: 0, bottom: tabBarController?.tabBar.bounds.height ?? 0, right: 0)
        
    }
}


extension WBBaseViewController:UITableViewDelegate,UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 0
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        return UITableViewCell()
    }
    
}


