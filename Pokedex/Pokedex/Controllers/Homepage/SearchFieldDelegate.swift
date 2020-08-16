
import Foundation
import UIKit

extension HomepageViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchedPokemon = nil
        for poke in allPokemon {
            if poke.name == textField.text {
                searchedPokemon = poke
                break
            } else {
                if let currentNumber = Int(textField.text!) {
                    if poke.number == currentNumber {
                        searchedPokemon = poke
                        break
                    }
                }
            }
        }
        if searchedPokemon != nil {
            performSegue(withIdentifier: "homeToProfile", sender: self)
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
