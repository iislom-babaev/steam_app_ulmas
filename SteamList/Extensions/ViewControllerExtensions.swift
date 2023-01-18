//
//  ViewControllerExtensions.swift
//  SteamList
//
//  Created by Macbook on 18/01/2023.
//

import UIKit

extension UIViewController {
    func applyBackgroundGradient() {
        let firstColor = UIColor(red: 41/255, green: 92/255, blue: 140/255, alpha: 1).cgColor
        let secondColor = UIColor(red: 40/255, green: 72/255, blue: 95/255, alpha: 1).cgColor
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [firstColor, secondColor]
        view.layer.insertSublayer(layer, at: 0)
    }
}
