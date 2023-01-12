//
//  GradientView.swift
//  SteamList
//
//  Created by Macbook on 12/01/2023.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var firstColor: UIColor = UIColor.clear {
        didSet {
            updateLayer()
        }
    }
    
    @IBInspectable var secondColor: UIColor = UIColor.clear {
        didSet {
            updateLayer()
        }
    }
    
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    
    func updateLayer() {
        guard let layer = self.layer as? CAGradientLayer else {
            return
        }
        layer.colors = [firstColor.cgColor, secondColor.cgColor]
    }
}
