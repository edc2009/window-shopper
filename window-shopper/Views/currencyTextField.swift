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
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 10, y: (frame.size.height / 2) - size/2 , width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.7961526113)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView () {
        
        //customizing background via code
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2476455479)
        layer.cornerRadius = 5.0
        clipsToBounds = true
        textAlignment = .center
        
        //attributed placeholder; customizing placeholder text via code
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
 
}
