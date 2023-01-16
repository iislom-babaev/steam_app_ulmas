//
//  BorderedView.swift
//  SteamList
//
//  Created by Macbook on 16/01/2023.
//

import UIKit

@IBDesignable
class BorderedView: UIView {
    
    @IBInspectable var color: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = color.cgColor
        }
    }
    
    @IBInspectable var width: CGFloat = 0 {
        didSet {
            layer.borderWidth = width
        }
    }
}
