//
//  CategoryCell.swift
//  GoodEatin
//
//  Created by fahad rasheed on 20/08/2020.
//  Copyright © 2020 fahad rasheed. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryImg.layer.cornerRadius = 10
    }

    func configureCell(category:FoodCategory){
        
        categoryImg.image = UIImage(named: category.imageName)
        categoryLbl.text  = category.title
    }

}
