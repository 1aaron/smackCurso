//
//  RoundedButton.swift
//  Smack
//
//  Created by Developer on 9/4/18.
//  Copyright © 2018 Aaron. All rights reserved.
//

import UIKit

//para ver los cambios de inmediato
@IBDesignable
class RoundedButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 5.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    override func awakeFromNib() {
        self.setUpView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setUpView()
    }
    
    func setUpView(){
        self.layer.cornerRadius = cornerRadius
    }
}
