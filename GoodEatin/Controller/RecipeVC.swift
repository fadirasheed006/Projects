//
//  RecipeSelectionVC.swift
//  GoodEatin
//
//  Created by fahad rasheed on 20/08/2020.
//  Copyright © 2020 fahad rasheed. All rights reserved.
//

import UIKit



class RecipeVC: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedRecipe:String!
    var recipes: [Recipe]!
     let data = DataSet()
    var recipeToPass:Recipe!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        recipes = data.getRecipes(forCategoryTitle: selectedRecipe)
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as? RecipeCell {
            let recipe = recipes[indexPath.item]
            cell.ConfigureRecipe(recipe: recipe)
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let celldimension = (width/2) - 15
      return CGSize(width: celldimension, height: celldimension)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        recipeToPass = recipes[indexPath.item]
        performSegue(withIdentifier: "toRecipeDetails", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let recipeDVC = segue.destination as? RecipeDVC {
            
            recipeDVC.recipeDetails = recipeToPass
        }
    }
    


}
