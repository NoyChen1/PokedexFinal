
import Foundation
import UIKit

extension FavoritesViewController {
    
    func makeNavigationBar() {
        self.navigationItem.title = "Favorite Pokemon"
    }
    
    func makeTable() {
        pokemonTable = UITableView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        pokemonTable.register(PokemonTableCell.self, forCellReuseIdentifier: "favorite")
        pokemonTable.delegate = self
        pokemonTable.dataSource = self
        view.addSubview(pokemonTable)
    }
}
