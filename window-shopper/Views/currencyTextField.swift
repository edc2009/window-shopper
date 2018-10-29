//
//  currencyTextField.swift
//  window-shopper
//
//  Created by Christopher on 10/28/18.
//  Copyright © 2018 Christopher. All rights reserved.
//
//how to have custom code rendered on main story board
//@IBDesignable -> prepareForInterfaceBuilder() -> awakeFromNib() -> customizeView ()
//follow format below

import UIKit

@IBDesignable
class currencyTextField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView () {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2476455479)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
 
}
