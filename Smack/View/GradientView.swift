//
//  GradientView.swift
//  Smack
//
//  Created by Developer on 8/21/18.
//  Copyright © 2018 Aaron. All rights reserved.
//

import UIKit

//render dentro del storyboard
@IBDesignable
class GradientView: UIView {
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            //actualizar la view al cambiarlo
            self.setNeedsLayout()
        }
    }
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            //actualizar la view al cambiarlo
            self.setNeedsLayout()
        }
    }

    //cuando se renderea se llama
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor,bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        //insertar layer en el view
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
