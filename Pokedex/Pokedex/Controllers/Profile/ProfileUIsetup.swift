//
//  ProfileUIsetup.swift
//  Pokedex
//
//  Created by Adam Ash on 3/25/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import Foundation
import UIKit

extension ProfileViewController {
    
    func makeImage() {
        pokemonPic = UIImageView(frame: CGRect(x: view.frame.width*5/100, y: view.frame.height*12/100, width: view.frame.width*90/100, height: view.frame.width*90/100))
        if let website = URL(string: pokemon.imageUrl) {
            pokemonPic!.load(url: website)
        }
        pokemonPic.layer.borderWidth = 1.0
        pokemonPic!.contentMode = .scaleAspectFit
        pokemonPic!.clipsToBounds = true
        view.addSubview(pokemonPic)
    }
    
    func makeNavigationBar() {
        self.navigationItem.title = "#\(pokemon.number!) " + pokemon.name
    }
    
    func makeWebButton() {
        webButton = UIButton(frame: CGRect(x: view.frame.width*4/100, y: view.frame.height*83/100, width: view.frame.width*38/100, height: view.frame.height*5/100))
        webButton.layer.borderWidth = 2.0
        webButton.layer.cornerRadius = 20
        webButton.setTitle("Web Search", for: .normal)
        webButton.setTitleColor(.black, for: .normal)
        webButton.backgroundColor = UIColor.lightGray
        webButton.titleLabel?.font = UIFont(name: "Arial", size: 20)
        webButton.addTarget(self, action: #selector(searchWeb), for: .touchUpInside)
        view.addSubview(webButton)
    }
    
    func makeFavoritesButton() {
        favoritesButton = UIButton(frame: CGRect(x: view.frame.width*44/100, y: view.frame.height*83/100, width: view.frame.width*55/100, height: view.frame.height*5/100))
        favoritesButton.layer.borderWidth = 2.0
        favoritesButton.layer.cornerRadius = 20
        favoritesButton.backgroundColor = UIColor.lightGray
        favoritesButton.setTitleColor(.black, for: .normal)
        let favorites = UserDefaults.standard.object(forKey: "faves") as? [String] ?? [String]()
        if !(favorites.contains(pokemon!.name)) {
            favoritesButton.setTitle("Add to Favorites", for: .normal)
        } else {
            favoritesButton.setTitle("Remove from Favorites", for: .normal)
        }
        favoritesButton.titleLabel?.font = UIFont(name: "Arial", size: 20)
        favoritesButton.addTarget(self, action: #selector(favoritesPushed), for: .touchUpInside)
        view.addSubview(favoritesButton)
    }
    
    func makeStatLabels() {
        pokemonAttack = UILabel(frame: CGRect(x: view.frame.width*2.5/100, y: view.frame.height*70/100, width: view.frame.width*30/100, height: view.frame.height*4/100))
        pokemonAttack.font = UIFont(name: "Arial", size: 17)
        pokemonAttack.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        pokemonAttack.textColor = .black
        pokemonAttack.text = "Attack: \(pokemon.attack!)"
        pokemonAttack.textAlignment = .center
        pokemonAttack.layer.borderWidth = 1.0
        view.addSubview(pokemonAttack)
        
        pokemonDefense = UILabel(frame: CGRect(x: view.frame.width*35/100, y: view.frame.height*70/100, width: view.frame.width*30/100, height: view.frame.height*4/100))
        pokemonDefense.font = UIFont(name: "Arial", size: 17)
        pokemonDefense.backgroundColor = #colorLiteral(red: 0.9995340705, green: 0.988355577, blue: 0.4726552367, alpha: 1)
        pokemonDefense.textColor = .black
        pokemonDefense.textAlignment = .center
        pokemonDefense.text = "Defense: \(pokemon.defense!)"
        pokemonDefense.layer.borderWidth = 1.0
        view.addSubview(pokemonDefense)
        
        pokemonHealth = UILabel(frame: CGRect(x: view.frame.width*67.5/100, y: view.frame.height*70/100, width: view.frame.width*30/100, height: view.frame.height*4/100))
        pokemonHealth.font = UIFont(name: "Arial", size: 17)
        pokemonHealth.backgroundColor = #colorLiteral(red: 0.8321695924, green: 0.985483706, blue: 0.4733308554, alpha: 1)
        pokemonHealth.textColor = .black
        pokemonHealth.textAlignment = .center
        pokemonHealth.text = "HP: \(pokemon.health!)"
        pokemonHealth.layer.borderWidth = 1.0
        view.addSubview(pokemonHealth)
        
        pokemonSpecialAttack = UILabel(frame: CGRect(x: view.frame.width*2.5/100, y: view.frame.height*75/100, width: view.frame.width*30/100, height: view.frame.height*4/100))
        pokemonSpecialAttack.font = UIFont(name: "Arial", size: 17)
        pokemonSpecialAttack.backgroundColor = UIColor(red: 0.5647, green: 0.4941, blue: 0.9686, alpha: 1.0)
        pokemonSpecialAttack.textColor = .black
        pokemonSpecialAttack.textAlignment = .center
        pokemonSpecialAttack.text = "spAtt: \(pokemon.specialAttack!)"
        pokemonSpecialAttack.layer.borderWidth = 1.0
        view.addSubview(pokemonSpecialAttack)
        
        pokemonSpecialDefense = UILabel(frame: CGRect(x: view.frame.width*35/100, y: view.frame.height*75/100, width: view.frame.width*30/100, height: view.frame.height*4/100))
        pokemonSpecialDefense.font = UIFont(name: "Arial", size: 17)
        pokemonSpecialDefense.backgroundColor = UIColor(red: 0.5098, green: 1, blue: 0.8275, alpha: 1.0)
        pokemonSpecialDefense.textColor = .black
        pokemonSpecialDefense.textAlignment = .center
        pokemonSpecialDefense.text = "spDef: \(pokemon.specialDefense!)"
        pokemonSpecialDefense.layer.borderWidth = 1.0
        view.addSubview(pokemonSpecialDefense)
        
        pokemonSpeed = UILabel(frame: CGRect(x: view.frame.width*67.5/100, y: view.frame.height*75/100, width: view.frame.width*30/100, height: view.frame.height*4/100))
        pokemonSpeed.font = UIFont(name: "Arial", size: 17)
        pokemonSpeed.backgroundColor = UIColor(red: 1, green: 0.5098, blue: 0.7608, alpha: 1.0)
        pokemonSpeed.textColor = .black
        pokemonSpeed.textAlignment = .center
        pokemonSpeed.text = "Speed: \(pokemon.speed!)"
        pokemonSpeed.layer.borderWidth = 1.0
        view.addSubview(pokemonSpeed)
        
        pokemonSpecies = UILabel(frame: CGRect(x: view.frame.width*20/100, y: view.frame.height*55/100, width: view.frame.width*60/100, height: view.frame.height*4/100))
        pokemonSpecies.font = UIFont(name: "Arial", size: 17)
        pokemonSpecies.textColor = .black
        pokemonSpecies.textAlignment = .center
        pokemonSpecies.text = "Species: \(pokemon.species!)"
        view.addSubview(pokemonSpecies)
        
        pokemonType = UILabel(frame: CGRect(x: view.frame.width*20/100, y: view.frame.height*60/100, width: view.frame.width*60/100, height: view.frame.height*4/100))
        pokemonType.font = UIFont(name: "Arial", size: 17)
        pokemonType.textColor = .black
        pokemonType.textAlignment = .center
        var types: String = "Type: "
        for type in pokemon.types {
            types += "\(type), "
        }
        
        types = String(types.dropLast(2))
        pokemonType.text = types
        view.addSubview(pokemonType)
        
        pokemonTotal = UILabel(frame: CGRect(x: view.frame.width*20/100, y: view.frame.height*65/100, width: view.frame.width*60/100, height: view.frame.height*4/100))
        pokemonTotal.font = UIFont(name: "Arial", size: 17)
        pokemonTotal.textColor = .black
        pokemonTotal.textAlignment = .center
        pokemonTotal.text = "Total: \(pokemon.total!)"
        view.addSubview(pokemonTotal)
    }
    
}
