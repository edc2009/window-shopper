//
//  ViewController.swift
//  window-shopper
//
//  Created by Christopher on 10/28/18.
//  Copyright © 2018 Christopher. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: currencyTextField!
    @IBOutlet weak var priceTxt: currencyTextField!
    
    
    override func viewDidLoad() {
        
        //how to build a button programatically***********
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        //when working with a button ALWAYS use set title
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        //in this instance, inputAccessoryView pins the calculate button ontop of the keyboard
        //x and y CGRect values, when modified, change nothing
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    
    }
    //@objc required to use this function in addTarget() above
    @objc func calculate () {
        print("we got here!")
    }


}

