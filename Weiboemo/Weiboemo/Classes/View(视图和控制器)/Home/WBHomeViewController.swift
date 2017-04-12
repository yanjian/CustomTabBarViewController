//
//  WBHomeViewController.swift
//  Weiboemo
//
//  Created by YanJian on 2017/4/11.
//  Copyright © 2017年 ZHILIFANF. All rights reserved.
//

import UIKit

private let cellid = "HOMECELLID"

class WBHomeViewController: WBBaseViewController {

    lazy var listData:[String] = [String]()
    
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
    
    override func loadData() {
        for t in 1..<18 {
            listData.append(String(t))
        }
    }

}

extension WBHomeViewController{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return listData.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
       let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath)
        cell.textLabel?.text = listData[indexPath.row]
        
        return cell
       
    }


}

extension WBHomeViewController{
    override func setupUI() {
        super.setupUI()
        
        navItem.leftBarButtonItem = UIBarButtonItem(title: "好友", tagter: self, action: #selector(showFriend))
       
        homeTableview?.register(UITableViewCell.self, forCellReuseIdentifier: cellid)
        
    }
}
