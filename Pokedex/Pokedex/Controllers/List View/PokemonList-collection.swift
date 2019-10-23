//
//  List-collection.swift
//  Pokedex
//
//  Created by Adam Ash on 3/22/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import Foundation
import UIKit

extension PokemonListViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.pokemonChoices.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pokemonCell", for: indexPath)
            as! PokemonCollectionCell
        for subview in cell.contentView.subviews {
            subview.removeFromSuperview()
        }
        cell.awakeFromNib()
        if let website = URL(string: pokemonChoices[indexPath.row].imageUrl) {
            cell.setPicture(website: website)
        }
        cell.setLabel(labelText: pokemonChoices[indexPath.row].name, number:pokemonChoices[indexPath.row].number)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        pokemonToSend = pokemonChoices[indexPath.row]
        performSegue(withIdentifier: "listToProfile", sender: self)
    }
}
