//
//  FavoritesViewController.swift
//  Pokedex
//
//  Created by Adam Ash on 3/26/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import Foundation
import UIKit

class FavoritesViewController: UIViewController {
    var pokemonTable: UITableView!
    var pokemonChoiceNames: [String]! = UserDefaults.standard.array(forKey: "faves") as? [String] ?? [String]()
    var allPokemon = PokemonGenerator.getPokemonArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTable()
        self.navigationController?.navigationBar.topItem?.title = "Favorites"
        //makeNavigationBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController!.isNavigationBarHidden = false
    }

    
    
    
}
