//
//  ViewController.swift
//  Pokedex
//
//  Created by Adam Ash on 3/20/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import UIKit

class HomepageViewController : UIViewController {
    
    var randomButton: UIButton!
    var searchButton: UIButton!
    var searchField: UITextField!
    var allPokemon = PokemonGenerator.getPokemonArray()
    var pokemonToSend = [Pokemon]()
    var searchedPokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        makeRandomButton()
        makeSearchButton()
        makeNavigationBar()
        makeSearchField()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController!.isNavigationBarHidden = false
        self.navigationController?.navigationBar.topItem?.title = "Pokedex Home"
    }
    
    @objc func randomClicked() {
        pokemonToSend = Array(allPokemon.shuffled()[0...19])
        performSegue(withIdentifier: "toRandom20", sender: self)
    }
    
    @objc func searchClicked() {
        performSegue(withIdentifier: "toSearch", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC = segue.destination as? PokemonListViewController {
            resultVC.pokemonChoices = pokemonToSend
        } else if let resultVC = segue.destination as? SearchViewController {
            resultVC.pokemonChoices = allPokemon.sorted(by: {$0.number < $1.number})
        } else if let resultVC = segue.destination as? ProfileViewController {
            resultVC.pokemon = searchedPokemon
        }
    }
            
}

