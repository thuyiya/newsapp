//
//  RoundButton.swift
//  posty
//
//  Created by thusitha on 8/16/19.
//  Copyright © 2019 noname. All rights reserved.
//
import UIKit

@IBDesignable
class RoundButton: UIButton {
    
    @IBInspectable
    var borderColor: UIColor? {
        didSet {
            self.layer.borderColor = borderColor?.cgColor        }
    }
    
    @IBInspectable
    var cornerRadius : CGFloat = 0.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    var borderWidth : CGFloat = 0.0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }

    
//    @IBInspectable
//    var dropShadow: UIColor? {
//        didSet {
//            self.layer.shadowColor = dropShadow?.cgColor
//            self.layer.shadowOffset = CGSize(width: 3, height: 3)
//            self.layer.shadowOpacity = 0.2
//            self.layer.shadowRadius = 8
//            self.layer.masksToBounds = false
//        }
//    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
