import UIKit



class HmVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var categorytoPass:String!
    let data = DataSet()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as?CategoryCell{
            cell.configureCell(category: data.categories[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        categorytoPass = data.categories[indexPath.row].title
        performSegue(withIdentifier: "toRecipeSelection", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let recipeVc = segue.destination as? RecipeVC {
           recipeVc.selectedRecipe = categorytoPass
            
            
        }
    }
    
}

