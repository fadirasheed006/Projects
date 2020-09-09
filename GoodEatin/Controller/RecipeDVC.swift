//
//  RecipeDVC.swift
//  GoodEatin
//
//  Created by fahad rasheed on 20/08/2020.
//  Copyright © 2020 fahad rasheed. All rights reserved.
//

import UIKit

class RecipeDVC: UIViewController {
    
    var recipeDetails:Recipe!

    @IBOutlet weak var detailImg: UIImageView!
    @IBOutlet weak var detailInstruction: UILabel!
    @IBOutlet weak var detailLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImg.image = UIImage(named: recipeDetails.imageName)
        detailLbl.text  = recipeDetails.title
        detailInstruction.text = recipeDetails.instructions
       
    }
    
}
