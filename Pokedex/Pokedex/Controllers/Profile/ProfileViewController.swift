
import Foundation
import UIKit
import SafariServices

class ProfileViewController: UIViewController {
    var pokemon: Pokemon!
    var pokemonPic: UIImageView!
    var pokemonAttack: UILabel!
    var pokemonDefense: UILabel!
    var pokemonSpeed: UILabel!
    var pokemonHealth: UILabel!
    var pokemonSpecialAttack: UILabel!
    var pokemonSpecialDefense: UILabel!
    var pokemonSpecies: UILabel!
    var pokemonType: UILabel!
    var pokemonTotal: UILabel!
    var webButton: UIButton!
    var favoritesButton: UIButton!
    
    
    override func viewDidLoad() {
        makeNavigationBar()
        makeImage()
        makeStatLabels()
        makeFavoritesButton()
    }
    
    
    @objc func favoritesPushed() {
        let stored = UserDefaults.standard
        var toAdd = [pokemon.name]
        
        guard let favorites = stored.array(forKey: "faves") else {
            stored.set(toAdd, forKey: "faves")
            favoritesButton.setTitle("Remove from Favorites", for: .normal)
            return
        }
        
        var casted_faves = favorites as! [String]
        if !casted_faves.contains(pokemon.name) {
            toAdd = toAdd + casted_faves
            stored.set(toAdd, forKey: "faves")
            favoritesButton.setTitle("Remove from Favorites", for: .normal)
            return
        }
        
        casted_faves.remove(at: casted_faves.firstIndex(of: pokemon.name)!)
        stored.set(casted_faves, forKey: "faves")
        favoritesButton.setTitle("Add to Favorites", for: .normal)
        
    }
    
}
