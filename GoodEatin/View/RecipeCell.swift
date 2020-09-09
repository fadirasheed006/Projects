//
//  RecipeCell.swift
//  GoodEatin
//
//  Created by fahad rasheed on 20/08/2020.
//  Copyright © 2020 fahad rasheed. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    @IBOutlet weak var recipeImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        recipeImg.layer.cornerRadius = 10
     }
    func  ConfigureRecipe(recipe:Recipe){
        
        recipeImg.image = UIImage(named: recipe.imageName)
    }
}
