//
//  CartClass.swift
//  Online-Store-v2
//
//  Created by Rey Walter Magbanua on 2020-07-26.
//  Copyright © 2020 Walter Magbanua. All rights reserved.
//

import Foundation

public class CartClass {
    
    var localQuantity:[String] = []
    var localImages:[String] = []
    var localItems:[String] = []
    var localPrices:[String] = []
    
    var structCart = Cart.init()
    
    func quantity() {
        
        for x in addedItems.items {
            switch x {
                case "Cleanser":
                    structCart.product1Count += 1
                    break
                case "Glasses":
                    structCart.product2Count += 1
                    break
                case "Lotion":
                    structCart.product3Count += 1
                    break
                case "Shampoo":
                    structCart.product4Count += 1
                    break
                case "Shoes":
                    structCart.product5Count += 1
                    break
                default:
                    break
            }
        }
        
        if structCart.product1Count != 0 {
            localQuantity += [String(structCart.product1Count)]
            localImages += ["product1"]
            localItems += ["Cleanser"]
            localPrices += ["$35"]
        }
        
        if structCart.product2Count != 0 {
            localQuantity += [String(structCart.product2Count)]
            localImages += ["product2"]
            localItems += ["Glasses"]
            localPrices += ["$499.99"]
        }
        
        if structCart.product3Count != 0 {
            localQuantity += [String(structCart.product3Count)]
            localImages += ["product3"]
            localItems += ["Lotion"]
            localPrices += ["$49.39"]
        }
        
        if structCart.product4Count != 0 {
            localQuantity += [String(structCart.product4Count)]
            localImages += ["product4"]
            localItems += ["Shampoo"]
            localPrices += ["$30"]
        }
        
        if structCart.product5Count != 0 {
            localQuantity += [String(structCart.product5Count)]
            localImages += ["product5"]
            localItems += ["Shoes"]
            localPrices += ["$200.01"]
        }
    }
}
