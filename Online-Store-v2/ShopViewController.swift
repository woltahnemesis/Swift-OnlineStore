//
//  ShopViewController.swift
//  Online-Store-v2
//
//  Created by Rey Walter Magbanua on 2020-07-22.
//  Copyright © 2020 Walter Magbanua. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController, UITabBarDelegate, UITableViewDelegate, UITableViewDataSource {
    
    //Product name list
    let nameList = ["Cleanser", "Glasses", "Lotion", "Shampoo", "Shoes"]
    
    //Price list
    let priceList = ["$35", "$499.99", "$49.39", "$30", "$200.01"]
    
    //Image list
    let imageList = ["product1", "product2", "product3", "product4", "product5"]
    
    var quantity:[String] = []
    
    var names:[String] = []
    var prices:[String] = []
    var images:[String] = []
    
    @IBOutlet weak var shopTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Calls the Table View Cell
        let tempCell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        tempCell.labelName.text = nameList[indexPath.row]
        
        tempCell.labelPrice.text = priceList[indexPath.row]
        
        tempCell.UIImages.image = UIImage(named: imageList[indexPath.row] + ".jpeg")
        
        return tempCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Instantiation
             let detailVC: DetailViewController  = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
             
             // Passes data to another View Controller
             detailVC.localImage = UIImage(named: imageList[indexPath.row] + ".jpeg")
        
             detailVC.localName = nameList[indexPath.row]
        
             detailVC.localPrice = priceList[indexPath.row]
        
             // Changes the screen view to another view controller
             self.navigationController?.pushViewController(detailVC, animated: true)
             
    }

    @IBAction func btnCart(_ sender: Any) {
        
        let cartObj = CartClass()
        
        cartObj.quantity()
        
        print(cartObj.localQuantity)
        
        self.quantity = cartObj.localQuantity
        self.images = cartObj.localImages
        self.names = cartObj.localItems
        self.prices = cartObj.localPrices
        
        performSegue(withIdentifier: "shopToCart", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let cartVC = segue.destination as! CartViewController
        
        cartVC.cartLocalImages = self.images
        cartVC.cartLocalItems = self.names
        cartVC.cartLocalPrices = self.prices
        cartVC.cartLocalQuantity = self.quantity
    }
}
