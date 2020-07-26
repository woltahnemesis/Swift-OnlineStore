//
//  DetailViewController.swift
//  Online-Store-v2
//
//  Created by Rey Walter Magbanua on 2020-07-22.
//  Copyright © 2020 Walter Magbanua. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var detailName: UILabel!
    
    @IBOutlet weak var detailPrice: UILabel!
    
    var localImage:UIImage!
    var localName:String!
    var localPrice:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailImage.image = localImage
        detailName.text = localName
        detailPrice.text = localPrice

    }
    

    @IBAction func btnAddItem(_ sender: Any) {
        
        var itemArray:[String] = []
        var priceArray:[String] = []
        var imageArray:[String] = []
        
        itemArray.append(localName)
        priceArray.append(localPrice)
        
        switch localName {
            case "Cleanser":
                imageArray.append("product1")
                break
            case "Glasses":
                imageArray.append("product2")
                break
            case "Lotion":
                imageArray.append("product3")
                break
            case "Shampoo":
                imageArray.append("product4")
                break
            case "Shoes":
                imageArray.append("product5")
                break
            default:
                imageArray.append("")
                break
        }
        
        addedItems.items += itemArray
        addedItems.prices += priceArray
        addedItems.images += imageArray
        
        print(addedItems.items)
        print(addedItems.prices)
        print(addedItems.images)
        
    }
    
}
