//
//  CartViewController.swift
//  Online-Store-v2
//
//  Created by Rey Walter Magbanua on 2020-07-22.
//  Copyright © 2020 Walter Magbanua. All rights reserved.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var cartLocalItems: [String] = []
    var cartLocalPrices: [String] = []
    var cartLocalImages: [String] = []
    var cartLocalQuantity:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(cartLocalItems)
        print(cartLocalPrices)
        print("Images: \(cartLocalImages)")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cartLocalQuantity.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Calls the Table View Cell
        let tempCell:CartTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cartCell") as! CartTableViewCell
        
        tempCell.cartLabelName.text = cartLocalItems[indexPath.row]
        
        tempCell.cartLabelPrice.text = cartLocalPrices[indexPath.row]
        
        tempCell.cartUIImages.image = UIImage(named: cartLocalImages[indexPath.row] + ".jpeg")
        
        tempCell.quantity.text = cartLocalQuantity[indexPath.row]
        
        return tempCell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Instantiation
             let modifyVC: ModifyViewController  = self.storyboard?.instantiateViewController(identifier: "ModifyViewController") as! ModifyViewController
             
             // Passes data to another View Controller
             modifyVC.localImage = UIImage(named: cartLocalImages[indexPath.row] + ".jpeg")
        
             modifyVC.localName = cartLocalItems[indexPath.row]
        
             modifyVC.localPrice = cartLocalPrices[indexPath.row]
        
             modifyVC.localQuantity = cartLocalQuantity[indexPath.row]
        
             // Changes the screen view to another view controller
             self.navigationController?.pushViewController(modifyVC, animated: true)
             
    }
    
}
