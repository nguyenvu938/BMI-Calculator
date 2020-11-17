//
//  CustomButton.swift
//  BMI CALCULATOR
//
//  Created by NguyenVu on 11/4/20.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(_ title: String, _ color: UIColor, _ font: UIFont) {
        self.init()
        self.setTitle(title, for: .normal)
        self.backgroundColor = color
        self.titleLabel?.font = font
        self.layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
