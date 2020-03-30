//
//  UIView+Extension.swift
//  YFN
//
//  Created by Axel Nunez on 3/30/20.
//  Copyright © 2020 Axel Nunez. All rights reserved.
//

import UIKit

// MARK: Interface Builder Helper

extension UIView {
    
    class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: .none)![0] as! T
    }
}
