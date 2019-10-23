//
//  ProfileViewController.swift
//  Pokedex
//
//  Created by Adam Ash on 3/25/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

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
        makeWebButton()
        makeFavoritesButton()
    }
    
    @objc func searchWeb() {
        let thingy: String = "https://google.com/search?q=" + pokemon.name
        if let url = URL(string: thingy) {
            let svc = SFSafariViewController(url: url)
            present(svc, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Search Unavailable", message:
                "Sorry, we cannot search the web for this Pokemon.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Go Back", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
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
        
        casted_faves.remove(at: casted_faves.index(of: pokemon.name)!)
        stored.set(casted_faves, forKey: "faves")
        favoritesButton.setTitle("Add to Favorites", for: .normal)
        
    }
    
}
