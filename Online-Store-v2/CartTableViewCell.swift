//
//  CartTableViewCell.swift
//  Online-Store-v2
//
//  Created by Rey Walter Magbanua on 2020-07-22.
//  Copyright © 2020 Walter Magbanua. All rights reserved.
//

import UIKit

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var cartLabelName: UILabel!
    
    @IBOutlet weak var cartLabelPrice: UILabel!
    
    @IBOutlet weak var cartUIImages: UIImageView!
    
    @IBOutlet weak var quantity: UILabel!
    
    @IBOutlet weak var cartBtnAdd: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
