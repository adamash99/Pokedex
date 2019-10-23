//
//  File.swift
//  Pokedex
//
//  Created by Adam Ash on 3/23/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import Foundation
import UIKit

class SearchViewController : UIViewController {
    var pokemonChoices: [Pokemon]!
    var pokemonToSend = [Pokemon]()
    var selectedCategories = [String]()
    var searchButton: UIButton!
    var bugButton: UIButton!
    var grassButton: UIButton!
    var darkButton: UIButton!
    var groundButton: UIButton!
    var dragonButton: UIButton!
    var iceButton: UIButton!
    var electricButton: UIButton!
    var normalButton: UIButton!
    var fairyButton: UIButton!
    var poisonButton: UIButton!
    var fightingButton: UIButton!
    var psychicButton: UIButton!
    var fireButton: UIButton!
    var rockButton: UIButton!
    var flyingButton: UIButton!
    var steelButton: UIButton!
    var ghostButton: UIButton!
    var waterButton: UIButton!
    var attackInput: UITextField!
    var attackLabel: UILabel!
    var defenseInput: UITextField!
    var defenseLabel: UILabel!
    var spAttackInput: UITextField!
    var spAttackLabel: UILabel!
    var spDefenseInput: UITextField!
    var spDefenseLabel: UILabel!
    var healthInput: UITextField!
    var healthLabel: UILabel!
    var speedInput: UITextField!
    var speedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTypeButtons()
        makeSearchButton()
        makeNavigationBar()
        makeStatFields()
    }
    
    @objc func categoryClicked(sender: UIButton) {
        if selectedCategories.contains(sender.currentTitle!) {
            sender.layer.borderColor = UIColor.red.cgColor
            selectedCategories.remove(at: selectedCategories.index(of: sender.currentTitle!)!)
        } else {
            sender.layer.borderColor = UIColor.green.cgColor
            selectedCategories.append(sender.currentTitle!)
        }
    }
    
    @objc func searchButtonClicked(sender: UIButton) {
        performSegue(withIdentifier: "searchToList", sender: self)
    }
    
    func filterPokemon() {
        pokemonToSend = pokemonChoices
        for type in selectedCategories {
            pokemonToSend = pokemonToSend.filter {$0.types.contains(type)}
        }
        if let minAttack = Int(attackInput.text!) {
            pokemonToSend = pokemonToSend.filter {$0.attack! >= minAttack}
        }
        if let minDefense = Int(defenseInput.text!) {
            pokemonToSend = pokemonToSend.filter {$0.defense! >= minDefense}
        }
        if let minSpAttack = Int(spAttackInput.text!) {
            pokemonToSend = pokemonToSend.filter {$0.specialAttack! >= minSpAttack}
        }
        if let minSpDefense = Int(spDefenseInput.text!) {
            pokemonToSend = pokemonToSend.filter {$0.specialDefense! >= minSpDefense}
        }
        if let minHealth = Int(healthInput.text!) {
            pokemonToSend = pokemonToSend.filter {$0.health! >= minHealth}
        }
        if let minSpeed = Int(speedInput.text!) {
            pokemonToSend = pokemonToSend.filter {$0.speed! >= minSpeed}
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC = segue.destination as? PokemonListViewController {
            filterPokemon()
            resultVC.pokemonChoices = pokemonToSend
        }
    }
    
    
}
