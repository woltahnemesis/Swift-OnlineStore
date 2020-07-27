//
//  ModifyViewController.swift
//  Online-Store-v2
//
//  Created by Rey Walter Magbanua on 2020-07-26.
//  Copyright © 2020 Walter Magbanua. All rights reserved.
//

import UIKit

class ModifyViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var quantity: UILabel!
    
    var localImage:UIImage!
    var localName:String!
    var localPrice:String!
    var localQuantity:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = localImage
        name.text = localName
        price.text = localPrice
        quantity.text = localQuantity
        
    }
    
    @IBAction func btnAdd(_ sender: UIButton) {
        
        let cartObj = CartClass()
        
        addedItems.items += [localName]
        addedItems.prices += [localPrice]
        
        if localName == "Cleanser" {
            addedItems.images += ["product1"]
        } else if localName == "Glasses" {
            addedItems.images += ["product2"]
        } else if localName == "Lotion" {
            addedItems.images += ["product3"]
        } else if localName == "Shampoo" {
            addedItems.images += ["product4"]
        } else if localName == "Shoes" {
            addedItems.images += ["product5"]
        }
        
        cartObj.quantity()
        
        print(cartObj.localQuantity)
        
        quantity.text = String(Int(quantity.text!)! + 1)
    }
    
}
