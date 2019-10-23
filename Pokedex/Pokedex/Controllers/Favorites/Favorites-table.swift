//
//  Favorites-collection.swift
//  Pokedex
//
//  Created by Adam Ash on 3/26/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import Foundation
import UIKit

extension FavoritesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonChoiceNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favorite", for: indexPath)
            as! PokemonTableCell
        for subview in cell.contentView.subviews {
            subview.removeFromSuperview()
        }
        cell.awakeFromNib()
        
        var currentPokemon: Pokemon?
        var currentName = pokemonChoiceNames[indexPath.row]
        for poke in allPokemon {
            if poke.name == currentName {
                currentPokemon = poke
            }
        }
        
        if let website = URL(string: currentPokemon!.imageUrl) {
            cell.makePictureFrame(website: website)
        }
        cell.makeLabel(labelText: currentPokemon!.name, number: currentPokemon!.number )
        cell.selectionStyle = .none
        return cell
    }
    


}
