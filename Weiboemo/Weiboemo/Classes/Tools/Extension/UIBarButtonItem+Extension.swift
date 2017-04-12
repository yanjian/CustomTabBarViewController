//
//  UIBarButtonItem+Extension.swift
//  Weiboemo
//
//  Created by YanJian on 2017/4/11.
//  Copyright © 2017年 ZHILIFANF. All rights reserved.
//

import UIKit


extension UIBarButtonItem{
    convenience init(title:String,normalColor:UIColor = UIColor.darkGray,highlightedColor:UIColor = UIColor.orange,tagter:Any?,action:Selector) {
        let friendBtn = UIButton()
        friendBtn.setTitle(title, for: .normal)
        friendBtn.setTitleColor(normalColor, for: .normal)
        friendBtn.setTitleColor(highlightedColor, for: .highlighted)
        friendBtn.addTarget(tagter, action:  action, for: .touchUpInside)
        friendBtn.sizeToFit()
        self.init(customView: friendBtn)
    }
}
