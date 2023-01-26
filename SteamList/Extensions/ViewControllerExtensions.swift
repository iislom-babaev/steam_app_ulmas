//
//  ViewControllerExtensions.swift
//  SteamList
//
//  Created by Macbook on 18/01/2023.
//

import UIKit

extension UIViewController {
    func applyBackgroundGradient() {
        let firstColor = UIColor(red: 0.132, green: 0.241, blue: 0.337, alpha: 1).cgColor
        let secondColor = UIColor(red: 0.115, green: 0.163, blue: 0.227, alpha: 1).cgColor
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [firstColor, secondColor]
        view.layer.insertSublayer(layer, at: 0)
    }
    
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
}
