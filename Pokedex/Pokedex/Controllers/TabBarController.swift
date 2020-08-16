
import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.items?[0].title = "Pokedex"
        tabBar.items?[1].title = "Favorites"
    }
    
    
}
