//
//  GradientView.swift
//  Smack1
//
//  Created by Zayd Midani on 2017-10-13.
//  Copyright © 2017 Zayd Midani. All rights reserved.
//

import UIKit

@IBDesignable // can work in storyboard
class GradientView: UIView {
    
    // to change inside of storyboard dynamically
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1){ // color picker that we can chose from
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1){ // color picker that we can chose from
        didSet{
            self.setNeedsLayout()
        }
        
    }
    // called whenever we change one of the above two variables. 
    override func layoutSubviews() { //func called when layout is updated.
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
}
