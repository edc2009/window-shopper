//
//  Wage.swift
//  window-shopper
//
//  Created by Christopher on 10/29/18.
//  Copyright © 2018 Christopher. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
