//
//  Random20-table.swift
//  Pokedex
//
//  Created by Adam Ash on 3/20/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import UIKit

extension PokemonListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonChoices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Randoms", for: indexPath)
            as! PokemonTableCell
        for subview in cell.contentView.subviews {
            subview.removeFromSuperview()
        }
        cell.awakeFromNib()
        if let website = URL(string: pokemonChoices[indexPath.row].imageUrl) {
            cell.makePictureFrame(website: website)
        }
        cell.makeLabel(labelText: pokemonChoices[indexPath.row].name, number: pokemonChoices[indexPath.row].number )
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        pokemonToSend = pokemonChoices[indexPath.row]
        performSegue(withIdentifier: "listToProfile", sender: self)
    }

}
