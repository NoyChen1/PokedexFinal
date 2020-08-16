
import UIKit

class PokemonListViewController : UIViewController {
    var pokemonTable: UITableView!
    var pokemonCollection: UICollectionView!
    var pokemonChoices: [Pokemon]!
    var pokemonToSend: Pokemon!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeNavigationBar()
        makeCollection()
        makeTable()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController!.isNavigationBarHidden = false
        //self.navigationController!.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.cyan]
        //self.navigationController!.navigationBar.barTintColor = .black
        /*
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.tintColor = UIColor.cyan
        navigationBarAppearace.barTintColor = UIColor.black
         */
    }
    
    @objc func viewSwitch() {
        if self.navigationItem.rightBarButtonItem?.title == "Table" {
            self.navigationItem.rightBarButtonItem?.title = "List"
            pokemonTable.isHidden = true
            pokemonCollection.isHidden = false
        } else {
            self.navigationItem.rightBarButtonItem?.title = "Table"
            pokemonTable.isHidden = false
            pokemonCollection.isHidden = true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC = segue.destination as? ProfileViewController {
            resultVC.pokemon = pokemonToSend
        }
    }
    
    
}
