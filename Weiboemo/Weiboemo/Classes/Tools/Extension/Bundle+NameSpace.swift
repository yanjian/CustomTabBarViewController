//
//  Bundle+NameSpace.swift
//  Weiboemo
//
//  Created by YanJian on 2017/4/11.
//  Copyright © 2017年 ZHILIFANF. All rights reserved.
//

import Foundation

extension Bundle{
    var namespace:String{
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
}
